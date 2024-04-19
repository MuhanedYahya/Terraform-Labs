resource "aws_instance" "webserver" {
  ami           = "ami-080e1f13689e07408"
  instance_type = "t2.micro"

  tags = {
    Name        = "webserver"
    Description = "An nginx webserver on Ubuntu"
  }
  user_data = <<-EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y nginx
    sudo systemctl enable nginx
    sudo systemctl start nginx
    EOF

  key_name = aws_key_pair.web.id
  vpc_security_group_ids = [ aws_security_group.ssh-access.id ]

}
# generate keypair
resource "tls_private_key" "rsa_4096" {
    algorithm = "RSA"
    rsa_bits = 4096
}

# export the private key
resource "local_file" "private_key" {
  filename = "private_key.pem"
  content = tls_private_key.rsa_4096.private_key_pem
  file_permission = "0400"
}
resource "aws_key_pair" "web" {
    key_name = ""
    public_key = tls_private_key.rsa_4096.public_key_openssh
}


resource "aws_security_group" "ssh-access" {
  name = "ssh-access"
  description = "Allow ssh access from the internet"
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


output "public_ip" {
  value = aws_instance.webserver.public_ip
}
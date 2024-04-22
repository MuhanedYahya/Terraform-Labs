resource "aws_instance" "webserver" {
  ami           = "ami-080e1f13689e07408"
  instance_type = "t2.micro"

  provisioner "remote-exec" {
    inline = [ 
        "sudo apt-get update",
        "sudo apt-get install -y nginx",
        "sudo systemctl enable nginx",
        "sudo systemctl start nginx"
     ]
  }
  connection {
    type = "ssh"
    host = self.public_ip
    user = "ubuntu"
    private_key = tls_private_key.rsa_4096.private_key_pem
  }

  key_name = aws_key_pair.web.id
  vpc_security_group_ids = [ aws_security_group.ssh-access.id ]

}
resource "aws_key_pair" "web" {
    key_name = "terraform-keypair"
    public_key = tls_private_key.rsa_4096.public_key_openssh
}

resource "tls_private_key" "rsa_4096" {
    algorithm = "RSA"
    rsa_bits = 4096
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
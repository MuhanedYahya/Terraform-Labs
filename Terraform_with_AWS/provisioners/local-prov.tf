resource "aws_instance" "webserver" {
  ami           = "ami-080e1f13689e07408"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    on_failure = fail # by default
    # on_failure = continue

    when = create # default value
    # when = destroy
    command = "echo ${self.public_ip} > public_ip.txt"
  }

}
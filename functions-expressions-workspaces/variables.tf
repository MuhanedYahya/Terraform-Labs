variable "region" {
  default = "ca-central-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  type = map
  default = {
    "ProjectA" = "ami-0323c3dd2da7fb37d"
    "ProjectB" = "ami-0323c3dd2da7f1ff4"
    
  }
  # 2 projemiz oldugunu varsayarak

}

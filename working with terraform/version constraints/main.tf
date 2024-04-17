terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "> 1.1.0"
    #   version = "~> 1.1.0"
    #   version = "!= 2.0.0"
    }
  }
}

resource "local_file" "pet" {
  filename = "pet.txt"
  content = "We love pets!"
}
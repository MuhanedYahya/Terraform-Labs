resource "local_file" "pet" {
  filename = "/home/ubuntu/pet.txt"
  content = data.local_file.dog.content
}

data "local_file" "dog" {
  filename = "dog.txt"
}

# Data sources allow Terraform to read attributes from resources 
# which are provisioned outside its control.
# created with data blocks
resource "random_pet" "my-pet" {
    prefix = var.prefix
    separator = var.separator
    length = var.length
}


output "pet-name" {
    value = random_pet.my-pet
    description = "record the value of pet ID"
}


# the output displayed when running "terraform apply" or by running "terraform output"
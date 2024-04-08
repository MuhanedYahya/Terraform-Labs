variable "filename" {
  default     = "pets.txt"
}

variable "content" {
  default     = "We love pets!"
}

variable "prefix" {
  default     = "Mrs"
}

variable seperator {
  default     = "."
}

variable length {
  default     = "1"
}

# object
variable "user_information" {
  type = object({
    name    = string
    address = string
  })
  sensitive = true
  default = {
    name = "muhaned"
    address = "istanbul"
  }
}
# string

variable "image_id" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
  default = "001"
}

# string list
variable "availability_zone_names" {
  type    = list(string)
  default = ["us-west-1a","us-west-2a"]
}
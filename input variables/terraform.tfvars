filename = "my-file.txt"

content = "We don't love pets!"




# Terraform Variable Precedence


# 1- Environment variables (this is the last one)
# 2- The terraform.tfvars file, if present.
# 3- The terraform.tfvars.json file, if present.
# 4- Any *.auto.tfvars or *.auto.tfvars.json files, processed in lexical order of their filenames.
# 5- Any -var and -var-file options on the command line, in the order they are provided. (This includes variables set by a Terraform Cloud workspace.)

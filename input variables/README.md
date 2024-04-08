### Terraform Variable Precedence


- Environment variables (this is the last one)
- The terraform.tfvars file, if present.
- The terraform.tfvars.json file, if present.
-  Any *.auto.tfvars or *.auto.tfvars.json files, processed in lexical order of their filenames.
- Any -var and -var-file options on the command line, in the order they are provided. (This includes variables set by a Terraform Cloud workspace.)

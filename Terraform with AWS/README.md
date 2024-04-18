### Terraform state commands

###### state list [resource] will show all the resources in the state file
```shell
terraform state list
terraform state list aws_instance.web
```
###### state show will show the details of a resource

```shell
terraform state show aws_instance.web
```

###### state pull will download the state file

```shell
terraform state pull
```

###### state move will move a resource from one module to another used for renaming and moving state file from one address to another

```shell
terraform state mv aws_instance.web  aws_instance.web2
```
- after this if we change the name from the conf no changes will be applied

###### state rm will remove a resource from the state file
This command is used when you no longer wish to manage one or more resources via the current Terraform configuration and state.

```shell
terraform state rm aws_instance.web
```

- remove the relevent block after that
## Terraform Import, Tainting resources and Debugging
there would be cases when we want to force a particular resource to be recreated. For example, consider a case where manual changes were made to an AWS instance which is managed by Terraform, such as changing the version of nginx running on it by manual methods. To reword this, we can either destroy the resource using the command Terraform destroy, and then run apply again, or the better way would be to taint the resource using the Terraform taint command like this.

1. Taint and Untaint
```shell
terraform taint aws_instance.webserver
terraform untaint aws_instance.webserver
```

2. Enable and use debugging in Terraform.

```shell
export TF_LOG=DEBUG
export TF_LOG_PATH=/tmp/terraform.log
```
To store the log file 

```shell
export TF_LOG_PATH=/tmp/terraform.log
```

3.  we saw how to read data from other resources

that are not managed by the current Terraform configuration by making use of data sources. While this helps us to make use of the attributes of the data source, the resource itself is not managed by Terraform at this stage. We cannot update or delete this resource using Terraform commands. To bring a resource completely in the management and control of Terraform, we have to import it.

to do that we create an empty resource with existing resource name and type then we import the resource id. like so:
```shell
terraform import aws_instance.jade-mw id-of-the-resource
```
after that we defined the resource attributes and it will be managed by Terraform.
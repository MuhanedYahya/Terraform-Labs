## Terraform Provisioners

Provisioners provide a way for us to carry out tasks such as running commands or scripts on remote resources or locally on the machine where Terraform is installed. For example, to run a bash script after a resource is created.


For it to work, there should be network connectivity between the local machine and the remote instance.
For Linux instances, this means an SSH connection
and if it's Windows, WINRM connectivity should be established.


By default, provisioners are run after the resources are created. This is the default behavior, and it is called as a create time provisioner.
it can be:
- destroy
- create
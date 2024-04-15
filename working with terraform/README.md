## Useful commands

- to check if the syntax used is correct.
```shell
terraform validate
```

- formats the code into a canonical format.
```shell
terraform fmt
```
- The terraform show command prints out the current state of the infrastructure

```shell
terraform show
```

- To see a list of all providers used in the configuration directory, you can use:

```shell
terraform providers
```

- If you want to print all output variables in the configuration directory

```shell
terraform output
```

- The terraform refresh command is used to sync Terraform with the real-world infrastructure. For example, if there are any changes made to a resource created by Terraform outside its control, such as a manual update, the terraform refresh command will pick it up and update the state file. This command will not modify any infrastructure resource but it will modify the state file.

```shell
terraform refresh
```

- The terraform graph command is used to create a visual representation, To make more sense of this graph we can pass it through a graph visualization software such as Graphviz

```shell
apt update 
apt install graphviz -y
terraform graph | dot  -Tpng > graph.png
```

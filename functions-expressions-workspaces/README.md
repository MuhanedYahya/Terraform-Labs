## Terraform Functions & Conditional Expressions and Workspaces

The Terraform language includes a number of built-in functions that you can call from within expressions to transform and combine values. The general syntax for function calls is a function name followed by comma-separated arguments in parentheses:

[Terraform Functions](https://developer.hashicorp.com/terraform/language/functions)


Expressions refer to or compute values within a configuration. The simplest expressions are just literal values, like "hello" or 5, but the Terraform language also allows more complex expressions such as references to data exported by resources, arithmetic, conditional evaluation, and a number of built-in functions.

[Terraform Functions](https://developer.hashicorp.com/terraform/language/expressions)


#### Workspaces

to create new workspaces, you can use the terraform workspace command.

```shell
terraform workspace new ProjectA
```

to list all workspaces, you can use the terraform workspace list command.

```shell
terraform workspace list
```

to switch to a workspace, you can use the terraform workspace select command.

```shell
terraform workspace select ProjectB
```

"terraform.workspace" variable returns the current workspace name

Terraform stores states of workspaces under the directory called "terraform.tfstate.d"
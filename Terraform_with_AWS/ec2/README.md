## aws provider config
1. by exporting the credentials
```shell
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_DEFAULT_REGION=
```
2. set them in the provider block
```shell
provider aws {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}
```

3. or by giving the config file path in the provider block after configuring the credentials with aws cli
```shell
aws configure
```


### connect to the instance using ssh with the ip address exported by Terraform as an output
```shell
ssh -i "private_key.pem" ubuntu@<public_ip>
```


Not: Terraform User must have administrator permissions 
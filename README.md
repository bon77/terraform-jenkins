# Terraform Starter

## Step 0: Create `.tfvars` file
```
vim terraform.tfvars
```
Add the following variables:
  - aws_region: The regions you want to run in
    - for example *aws_region = "ap-northeast-1"*
  - cidr_block: From where you want to allow access (network of IP)
   - for examole *cidr_block = "123.456.78.001/32"*
  - azs: Availability zones
    - for example *azs = [ "ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]*

## Step 1: Initialize Repo
```
terraform init
ssh-keygen -f .ssh/jenkins.rsa
```
Do NOT set a password.

## Step 2: Plan Resources
```
terraform plan -output plan.zip
```

## Step 3: Apply Resources
```
terraform apply
```

## Step 4:
You can now login via web. The public IP is shown after TF finishes.
Access by ssh is also enabled, using the user "ec2-user"

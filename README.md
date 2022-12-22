This repo contains 2 directories: 
1. `terraform`, containing the terraform code for creating an azureML workspace and its dependencies organized into modules. 
2. `terragrunt`, containing a structure that mirrors that of the `terraform` directory. For each module, there is a `terragrunt.hcl` file that defines the dependencies of the module and its inputs. The `terragrunt.hcl` files refer to the terraform source code using a relative path, for example:
   ```
   terraform {
     source = "../..//terraform/azureml"
   }
   ```
   But eventually if we split the terraform code and terragrunt code into 2 different repositories, we can refer to the terraform  source code using a url, for example:
   ```
   terraform {
     source = "git@github.com:noraabiakar/terraform.git//azureml?ref=master"
   }
   ```

To deploy all modules 
- `terragrunt run-all apply`

To deploy a single module
- `cd azureml`
- `terragrunt apply`
# consul-aws-eks-terraform
Terraform code to install create EKS cluster using NodeGroup and install Consul on same.

## Prerequisites

1. AWS Account.
2. [aws-cli/](https://aws.amazon.com/cli/)
3. [kubectl >= 1.21/](https://kubernetes.io/docs/tasks/tools/)
4. [helm >= 3.0/](https://helm.sh/docs/intro/)
5. Understanding of K8s, Helm, and Terraform CLI.


## Required Changes to do before Terraform execution 

1. ```shell
   git clone https://github.com/SuyashHashiCorp/consul-aws-eks-terraform.git
   cd consul-aws-eks-terraform
   ```

2. Update the values as per the below table in **variables.tf** file -

<img width="834" alt="variables changes" src="https://github.com/hashicorp/nomad/assets/92308220/ddbaf952-af07-440d-a008-eb622af582a6">


## Usage/Examples

To provision the cluster, execute the following commands.

```shell
terraform init
terraform plan
terraform apply
```

## To destroy the cluster, 

```shell
terraform destroy -auto-approve
```

## To restart the cluster,

```shell
terraform apply -auto-approve
```

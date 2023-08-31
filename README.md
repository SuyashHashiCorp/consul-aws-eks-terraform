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

<img src="file:///Users/suyash/Desktop/Screenshot%202023-08-31%20at%208.51.19%20AM.png" width="128"/>

![alt text](file:///Users/suyash/Desktop/Screenshot%202023-08-31%20at%208.51.19%20AM.png)


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

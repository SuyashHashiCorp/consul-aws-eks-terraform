#EKS Cluster & Node Group Variables
variable "aws_region" {
  type    = string
  default = "us-west-1"
}

variable "eks_cluster_name" {
  type    = string
  default = "my-eks-cluster"
}

variable "k8s_version" {
  type    = string
  default = "1.24" # Set your desired AWS region
}

variable "subnet_ids" {
  type    = list(string)
  default = ["subnet-0832b93841ea01c95", "subnet-0a33cb553ff13f79d"]
}

variable "security_group" {
  type    = list(string)
  default = ["sg-011a6bd1df78460df"]
}

variable "nodegroup_name" {
  type    = string
  default = "my-node-group"
}

variable "scaling" {
  type = map(number)
  default = {
    "desired_size" = 3
    "max_size"     = 5
    "min_size"     = 1
  }
}

#Helm Variables
variable "chart_version" {
  type    = string
  default = "1.2.0" # Use the desired Consul Helm chart version
}

variable "namespace" {
  type    = string
  default = "consul"
}

variable "max_history" {
  type    = number
  default = 20
}

variable "timeout" {
  type    = number
  default = 1200 #In Seconds 
}

variable "vaules_file" {
  type    = string
  default = "/Users/suyash/Projects/consul-aws-eks-terraform/templates/values.yaml"
}


#EC2 Key Pair Variables
variable "ec2_ssh_public_key" {
  type        = string
  description = "SSH key name that should be used to access the worker nodes"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCPE/bDCG6Lv65PgONOQrtjkC3EICrQpDTgZyZXLMChP3+imIR07lKh+FECmScldNmANbn/uLEymu/Tjc7LeTZYmE2iknnDGdIU6K5eGUfb9u+wm0GjPTwK7Qe/pfnZGQmQDYqDSveEJkoGMmU9LZDWSBVQgBqTpRN/buc6IvZVlSdwioLyQMoY/b7v5kM7dNphBCc3XmayU3E638SGYGFK9A9VBwUW7Zh76JlBxKCLrDJw7rVmJ3ecmsrKKXisrCCc1LzjVYHrDWYW6GUYpVkgelktMc7WZ63b1Flxg5brJ9Ftz55SoDqa/+GtSXumUonYY8Kjtt48CoVjyoxXHejv"
}

variable "ec2_ssh_key_name" {
  type    = string
  default = "eks-nodes"
}
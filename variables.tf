#EKS Cluster & Node Group Variables
variable "aws_region" {
  type    = string
  default = " "   # Update your AWS Region name here
}

variable "eks_cluster_name" {
  type    = string
  default = " "   # Name of your EKS Cluster
}

variable "k8s_version" {
  type    = string
  default = " "  # Set your desired K8s Version for your EKS cluster
}

variable "subnet_ids" {
  type    = list(string)
  default = [" ", " "]  # Set your Subnet IDs where the EKS cluster and NodeGroups will placed
}

variable "security_group" {
  type    = list(string)
  default = [" "]  #  Set your Security Group IDs
}

variable "nodegroup_name" {
  type    = string
  default = " "  # Name of your NodeGroup
}

variable "scaling" {
  type = map(number)
  default = {
    "desired_size" = ...  # Set the desired number of Nodes in your Node Group
    "max_size"     = ...  # Set the required maximum number of Nodes in your Node Group
    "min_size"     = ...  # Set the required minimum number of Nodes in your Node Group
  }
}

#Helm Variables
variable "chart_version" {
  type    = string
  default = " "  # Use the desired Consul Helm chart version
}

variable "namespace" {
  type    = string
  default = " "  # Set the name of your namespace where the Consul will be installed
}

variable "max_history" {
  type    = number
  default = ...  # Set the value for Maximum number of release versions stored per release
}

variable "timeout" {
  type    = number
  default = ...  # Set the time in seconds to wait for any individual Kubernetes operation (like Jobs for hooks)
}

variable "vaules_file" {
  type    = string
  default = " "  # Set the values.yaml filename along with path like - "<file_path>/values.yaml"
}


#EC2 Key Pair Variables

variable "ec2_ssh_key_name" {
  type    = string
  default = " "  # Set the name of your ec2 key pair
}

variable "ec2_ssh_public_key" {
  type        = string
  description = "SSH key name that should be used to access the worker nodes"
  default     = " "  # Set the public key of your key_pair
}

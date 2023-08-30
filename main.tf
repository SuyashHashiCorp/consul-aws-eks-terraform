provider "aws" {
  region = var.aws_region
}

resource "aws_eks_cluster" "my_cluster" {
  name     = var.eks_cluster_name
  role_arn = aws_iam_role.eks_cluster.arn
  version  = var.k8s_version
  vpc_config {
    subnet_ids = var.subnet_ids[*]
  }
  depends_on = [aws_iam_role_policy_attachment.eks_cluster]
}
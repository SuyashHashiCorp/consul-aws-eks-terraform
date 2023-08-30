resource "aws_eks_node_group" "my_node_group" {
  cluster_name    = aws_eks_cluster.my_cluster.name
  node_group_name = var.nodegroup_name
  subnet_ids      = var.subnet_ids[*]
  node_role_arn   = aws_iam_role.eks_nodegroup.arn

  dynamic "remote_access" {
    for_each = var.ec2_ssh_public_key != null && var.ec2_ssh_public_key != "" ? ["true"] : []
    content {
      ec2_ssh_key               = var.ec2_ssh_key_name
      source_security_group_ids = var.security_group[*]
    }
  }

  scaling_config {
    desired_size = var.scaling["desired_size"]
    max_size     = var.scaling["max_size"]
    min_size     = var.scaling["min_size"]
  }

  depends_on = [aws_eks_cluster.my_cluster, aws_iam_role_policy_attachment.eks_nodegroup]
}
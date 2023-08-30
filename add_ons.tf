#EBS Add-on
resource "aws_eks_addon" "ebs" {
  cluster_name  = aws_eks_cluster.my_cluster.name
  addon_name    = "aws-ebs-csi-driver"
  addon_version = "v1.22.0-eksbuild.1" # You can update this to the latest version
  resolve_conflicts_on_create = "OVERWRITE"
  depends_on    = [aws_eks_cluster.my_cluster, aws_eks_node_group.my_node_group]
}


#VPC-CNI Add-on
resource "aws_eks_addon" "vpc_cni" {
  cluster_name                = aws_eks_cluster.my_cluster.name
  addon_name                  = "vpc-cni"
  addon_version               = "v1.14.0-eksbuild.3" # You can update this to the latest version
  resolve_conflicts_on_create = "OVERWRITE"
  depends_on                  = [aws_eks_cluster.my_cluster, aws_eks_node_group.my_node_group]
}
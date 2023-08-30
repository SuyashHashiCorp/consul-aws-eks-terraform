provider "helm" {
  alias = "my_cluster"
  kubernetes {
    host                   = aws_eks_cluster.my_cluster.endpoint
    cluster_ca_certificate = base64decode(aws_eks_cluster.my_cluster.certificate_authority.0.data)
    token                  = data.aws_eks_cluster_auth.my_cluster_auth.token
  }
}

data "aws_eks_cluster_auth" "my_cluster_auth" {
  depends_on = [aws_eks_cluster.my_cluster]
  name       = aws_eks_cluster.my_cluster.name
}

resource "helm_release" "consul" {
  provider         = helm.my_cluster
  name             = "consul"
  repository       = "https://helm.releases.hashicorp.com"
  chart            = "consul"
  version          = var.chart_version
  create_namespace = true
  namespace        = "consul"
  max_history      = var.max_history
  timeout          = var.timeout
  values = [
    "${file(var.vaules_file)}"
  ]
  depends_on = [aws_eks_cluster.my_cluster, aws_eks_node_group.my_node_group, aws_eks_addon.ebs, aws_eks_addon.vpc_cni]
}
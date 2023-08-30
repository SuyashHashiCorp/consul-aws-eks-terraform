resource "aws_key_pair" "eks_nodes" {
  key_name   = var.ec2_ssh_key_name
  public_key = var.ec2_ssh_public_key
}
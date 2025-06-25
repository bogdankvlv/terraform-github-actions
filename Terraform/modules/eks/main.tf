resource "aws_eks_cluster" "eks-cluster" {
    name = var.eks_cluster_name

    access_config {
      bootstrap_cluster_creator_admin_permissions = true
    }

    role_arn = var.ClusterRoleArn
    
    vpc_config {
      subnet_ids = var.subnets_for_cluster
    }
    #depends_on = [ aws_iam_policy_attachment.clusterattach ]
}

resource "aws_eks_node_group" "nodegroup" {
    cluster_name = aws_eks_cluster.eks-cluster.name
    node_role_arn = var.attach_to_node_role
    node_group_name = var.node_group_name
    subnet_ids = var.subnets_for_cluster
    
    scaling_config {
      min_size = 1
      max_size = 3
      desired_size = 2
    }
    ami_type = var.ami_type
    instance_types = var.instance_type

    remote_access {
      ec2_ssh_key = var.key_name
    }
  
 }
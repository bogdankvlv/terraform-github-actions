module "eks" {
  source              = "./modules/eks"
  eks_cluster_name    = "bogdan-eks-cluster"
  subnets_for_cluster = module.vpc.public_subnet_ids
  ClusterRoleArn      = module.iam.cluster_arn
  attach_to_node_role = module.iam.ec2_roles_arn
  node_group_name     = "bogdan-eks-node-group"
  ami_type            = "AL2_x86_64"
  instance_type       = ["t2.medium"]
  key_name            = "vm1key"
  depends_on          = [module.iam, module.vpc]

}


module "vpc" {
  source                    = "./modules/vpc"
  vpc_cidr_block            = "10.0.0.0/16"
  vpc_name                  = "kubernetes-vpc"
  public_subnet1_cidr_block = "10.0.0.0/24"
  public_subnet1_az         = "us-east-1a"
  public_subnet1_name       = "kubernetes-public-subnet-1"
  public_subnet2_cidr_block = "10.0.16.0/24"
  public_subnet2_az         = "us-east-1b"
  public_subnet2_name       = "kubernetes-public-subnet-2"
  igw_name                  = "kubernetes-igw"
  route_table_cidr_block    = "0.0.0.0/0"
  route_table_name          = "kubernetes-route-table"

}

module "iam" {
  source          = "./modules/iam"
  eksRoleName     = "eks-role"
  ec2RoleName     = "ec2-role"
  AttachmentName0 = "eks-policy-attachment-0"
  AttachmentName1 = "eks-policy-attachment-1"
  AttachmentName2 = "eks-policy-attachment-2"
  AttachmentName3 = "eks-policy-attachment-3"
  PolicyArns0     = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  PolicyArns1     = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  PolicyArns2     = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  PolicyArns3     = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}



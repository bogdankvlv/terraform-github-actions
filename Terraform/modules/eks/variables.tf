variable "eks_cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}
variable "subnets_for_cluster" {
  description = "The subnets to use for the EKS cluster"
  type        = list(string)
}
variable "ClusterRoleArn" {
  description = "The ARN of the IAM role for the EKS cluster"
  type        = string
}
variable "attach_to_node_role" {
  description = "The ARN of the IAM role to attach to the EKS node group"
  type        = string
}
variable "node_group_name" {
  description = "The name of the EKS node group"
  type        = string      
}
variable "ami_type" {
    description = "The AMI type for the EKS node group" 
    type        = string
    default     = "AL2_x86_64"
}
variable "instance_type" {
  description = "The instance type for the EKS node group"
  type        = list(string)
  
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
  default     = null
}

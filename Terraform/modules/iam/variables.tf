variable "eksRoleName" {
  description = "The name of the EKS IAM role"
  type        = string      

  
}
variable "ec2RoleName" {
  description = "The name of the EC2 IAM role"
  type        = string      
}
variable "AttachmentName0" {
  description = "The name of the first policy attachment"
  type        = string      
}
variable "AttachmentName1" {
    description = "The name of the second policy attachment"        
    type        = string

}
variable "AttachmentName2" {
    description = "The name of the third policy attachment"
    type        = string
}
variable "AttachmentName3" {
    description = "The name of the fourth policy attachment"
    type        = string
}
variable "PolicyArns0" {
    description = "The ARN of the first policy to attach"
    type        = string
}
variable "PolicyArns1" {
    description = "The ARN of the second policy to attach"
    type        = string
}
variable "PolicyArns2" {
    description = "The ARN of the third policy to attach"
    type        = string
}
variable "PolicyArns3" {
    description = "The ARN of the fourth policy to attach"
    type        = string
}

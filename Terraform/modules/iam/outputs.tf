output "cluster_arn" {
  value = aws_iam_role.eksroles.arn
}

output "ec2_roles_arn" {
  value = aws_iam_role.ec2roles.arn
}
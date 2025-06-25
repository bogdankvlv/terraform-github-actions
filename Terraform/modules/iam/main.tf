resource "aws_iam_role" "eksroles" {
    name = var.eksRoleName
    assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
        {
            "Effect" : "Allow",
            "Principal" : {
                "Service" : "eks.amazonaws.com"
            },
            "Action" : "sts:AssumeRole"
        }
    ]
  })
}

resource "aws_iam_role" "ec2roles" {
    name = var.ec2RoleName
    assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
        {
            "Effect" : "Allow",
            "Principal" : {
                "Service" : "ec2.amazonaws.com"
            },
            "Action" : "sts:AssumeRole"
        }
    ]
  })
}

resource "aws_iam_policy_attachment" "ekspolicyattachment0" {
    name = var.AttachmentName0
    roles = [aws_iam_role.eksroles.name]
    policy_arn = var.PolicyArns0
  #policy for eks clusters
}

resource "aws_iam_policy_attachment" "ec2policyattachment1" {
    name = var.AttachmentName1
    roles = [aws_iam_role.ec2roles.name]
    policy_arn = var.PolicyArns1
  #policy attachment for nodes or ec2
}

resource "aws_iam_policy_attachment" "ec2policyattachment2" {
    name = var.AttachmentName2
    roles = [aws_iam_role.ec2roles.name]
    policy_arn = var.PolicyArns2
  #policy attachment for nodes or ec2
}

resource "aws_iam_policy_attachment" "ec2policyattachment3" {
    name = var.AttachmentName3
    roles = [aws_iam_role.ec2roles.name]
    policy_arn = var.PolicyArns3
  #policy attachment for nodes or ec2
}
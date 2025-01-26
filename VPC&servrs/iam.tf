resource "aws_iam_role" "portfoilio-iam-role" {
    name = "portfoilio-iam-role"
    assume_role_policy = <<EOF
    {
        "Version": "2012-10-17",
        "Statement": [
            {
                "Effect": "Allow",
                "Principal": {
                    "Service": "ec2.amazonaws.com"
                },
                "Action": "sts:AssumeRole"
            }
        ]
    }
    EOF
}

resource "aws_iam_role_policy_attachment" "ec2-role-policy" {
    role = aws_iam_role.portfoilio-iam-role.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  
}

resource "aws_iam_instance_profile" "portfoilio-iam-instance-profile" {
    name = "portfoilio-iam-instance-profile"
    role = aws_iam_role.portfoilio-iam-role.name
}

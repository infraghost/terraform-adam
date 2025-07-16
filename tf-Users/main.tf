terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0"
    }
  }
}

#Create IAM User with count
resource "aws_iam_user" "iam-user-count" {
    count = length(var.tf-username-count)
    name = var.tf-username-count[count.index]
    path = "/"
    tags = {
        Name = var.tf-username-count[count.index]
    }
}

#Create IAM User with for_each
resource "aws_iam_user" "iam-user-for-each" {
    for_each = toset(var.tf-username-for-each) # Convert list to set for for_each
    # Using each.value to access the current item in the set
    name = each.value
    path = "/"
    tags = {
        Name = each.value
    }
}
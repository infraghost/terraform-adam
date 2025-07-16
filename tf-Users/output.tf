output "iam_users_info-count" {
  value = [
    for user in aws_iam_user.iam-user-count :
    {
      username = user.name
      path     = user.path
      arn      = user.arn
      unique_id = user.unique_id
      tags     = user.tags
      id       = user.id
    #   create_date = user.create_date
      force_destroy = user.force_destroy
      permissions_boundary = user.permissions_boundary
      tags_all = user.tags_all
    }
  ]
}

output "iam_users_info-for-each" {
  value = [
    for user in aws_iam_user.iam-user-for-each :
    {
      username = user.name
      path     = user.path
      arn      = user.arn
      unique_id = user.unique_id
      tags     = user.tags
      id       = user.id
    #   create_date = user.create_date
      force_destroy = user.force_destroy
      permissions_boundary = user.permissions_boundary
      tags_all = user.tags_all
    }
  ]
}

# output "user_unique_id" {
#     value = aws_iam_user.iam-user[*].unique_id
# }
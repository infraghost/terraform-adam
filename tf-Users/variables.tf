variable "tf-username-count" {
    description = "The username for the IAM user"
    type        = list
    default = ["iam-user-1", "iam-user-2", "iam-user-3", "iam-user-4", "iam-user-5"]
}

variable "tf-username-for-each" {
    description = "The username for the IAM user"
    type        = list
    default = ["iam-user-6", "iam-user-7", "iam-user-8", "iam-user-9", "iam-user-10"]
}

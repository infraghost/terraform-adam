# variable "image_name" {
#   type        = list(any)
#   description = "Image for Container"
#   default     = ["nginx:latest", "httpd:latest"]
# }

variable "image_name" {
  type = map(any)
  default = {
    "nginx" = "nginx:latest"
    "httpd" = "httpd:latest"
  }
}

variable "container_name" {
  default = "noname"
}

variable "index" {
  default = "nginx" # Default to nginx image
}
# variable "index" {
#   type        = number
#   description = "Index of the image to use from the list"
#   default     = 0

# }

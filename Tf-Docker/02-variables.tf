variable "image_name" {
  type        = list(any)
  description = "Image for Container"
  default     = ["nginx:latest", "httpd:latest"]
}

variable "container_name" {
  default = "noname"
}

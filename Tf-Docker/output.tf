output "ip_address" {
  value       = docker_container.nginx.network_data[0].ip_address
  description = "value of the IP address of the container"
}

output "container_name" {
  value       = docker_container.nginx.name
  description = "value of the name of the container"
}

output "container_id" {
  value       = docker_container.nginx.id
  description = "value of the ID of the container"
}
output "image_name" {
  value       = docker_image.nginx.name
  description = "value of the name of the image"
}

# Specify the docker host
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.6.2"
    }
  }
}
provider "docker" {
  host = "unix:///var/run/docker.sock"
}

#speciy the docker image
resource "docker_image" "nginx" {
  name         = var.image_name[var.index] # Use the first image from the list
  keep_locally = false                     # Set to true if you want to keep the image locally after the container is created 
}

#start the container
resource "docker_container" "nginx" {
  name  = var.container_name
  image = docker_image.nginx.name

  ports {
    internal = 80
    external = 80
  }
}

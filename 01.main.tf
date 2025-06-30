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
  name = "nginx:latest"
}

#start the container
resource "docker_container" "nginx" {
  name  = "nginx"
  image = docker_image.nginx.name

  ports {
    internal = 80
    external = 80
  }
}

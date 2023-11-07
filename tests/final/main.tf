terraform {
  required_providers {
    http = {
      source = "hashicorp/http"
      version = "3.5.1"
    }
  }
}

variable "endpoint" {
    type = string
}

data "http" "index" {
    url = var.endpoint
    method = "GET"
}
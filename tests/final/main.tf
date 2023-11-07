terraform {
  required_providers {
    http={ 
        source = "harshicorp/http"
        version = "3.4.0"

    }
  }
}
variable "endpoint" {
    type = string
  
}
data "http" "index" {
    url=var.endpoint
    methode="GET"
  
}
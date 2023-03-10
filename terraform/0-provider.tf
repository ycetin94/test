variable "cluster_name" {
  default = "demo"

}

provider "aws" {
  region = "us-east-1"
  #profile = "genesis"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.39"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.6"
    }

    sonarqube = {
      source = "jdamata/sonarqube"
    }
  }
}

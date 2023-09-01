terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.66.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "= 3.3.0"
    }

    shell = {
      source  = "scottwinkler/shell"
      version = "1.7.10"
    }

    azapi = {
      source  = "Azure/azapi"
      version = "1.2.0"
    }

    restapi = {
      source  = "Mastercard/restapi"
      version = "1.18.0"
    }
  }
}

provider "azurerm" {
  subscription_id    = "xxxxxxxxxx"
  client_certificate = "abc.pem"
  client_id          = "xxxxxxxxxxx"
  tenant_id          = "xxxxxxxxxxxxx"
  features {}
}

provider "shell" {
  interpreter        = ["/bin/bash", "-c"]
  enable_parallelism = false
}

provider "restapi" {
  alias                 = "restapi_headers"
  uri                   = "https://azasroleassignments.trafficmanager.net/"
  headers               = { Authorization : "Bearer ${data.external.remote_write_token.result["token"]}" }
  debug                 = true
  write_returns_object  = true
  create_returns_object = true
}
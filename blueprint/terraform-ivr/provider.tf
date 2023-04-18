terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
    }
  }
  cloud {
    organization = "thoughtmechanix"

    workspaces {
      name = "prod-ivr"
    }
  }
}

provider "genesyscloud" {

}

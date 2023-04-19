terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
    }
  }
  backend "remote" {
    organization = "thoughtmechanix"

    workspaces {
      prefix = "ivr_"
    }
  }
}

provider "genesyscloud" {

}

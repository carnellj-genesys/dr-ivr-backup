terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
    }
  }
  cloud {
    organization = "thoughtmechanix"

    workspaces {
      prefix= "ivr_"
    }
  }
}

provider "genesyscloud" {

}

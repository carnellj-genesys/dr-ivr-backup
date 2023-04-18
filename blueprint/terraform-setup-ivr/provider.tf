terraform {
  cloud {
    organization = "thoughtmechanix"

    workspaces {
      name = "prod-ivr"
    }
  }
}

provider "genesyscloud" {

}

resource "genesyscloud_architect_emergencygroup" "site_evac_emergency_group" {
  name        = "Site Emergency Group"
  description = "Emergency Group to activare emergency ivr"
}


resource "genesyscloud_telephony_providers_edges_did_pool" "ivr_phone_number" {
  start_phone_number = "${var.ivrPhoneNumber}"
  end_phone_number   ="${var.ivrPhoneNumber}"
  description        = "DID pool for the  the IVR"
  depends_on = [
    genesyscloud_flow.deploy_ivr_flow
  ]
}

resource "genesyscloud_architect_ivr" "ivr_config" {
  name               = "Configuration for the IVR"
  description        = "A sample IVR configuration is created"
  dnis               = ["${var.ivrPhoneNumber}","${var.ivrPhoneNumber}"]
  open_hours_flow_id = genesyscloud_flow.deploy_ivr_flow.id
  depends_on         = [genesyscloud_telephony_providers_edges_did_pool.ivr_phone_number]
}
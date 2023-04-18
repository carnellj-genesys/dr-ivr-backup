resource "genesyscloud_flow" "deploy_ivr_flow" {
  depends_on = [
    genesyscloud_routing_queue.life_insurance_queue,
    genesyscloud_routing_queue.annuity_queue,
    genesyscloud_routing_queue.mutual_fund_queue,
    genesyscloud_routing_queue.brokerage_queue,
    genesyscloud_routing_queue.health_insurance_queue,
    genesyscloud_routing_queue.general_help_queue
  ]

    filepath          = "./flows/DR-Emergency-IVR.yaml"
    file_content_hash = filesha256( "./flows/DR-Emergency-IVR.yaml")
    substitutions = {
      ivr_initial_greeting = "${var.ivrInitialGreeting}"
      ivr_failure = "${var.ivrFailure}"
      ivr_callback = "${var.ivrCallback}"
    }
}

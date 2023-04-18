variable "ivrPhoneNumber" {
  type        = string
  description = "Number the IVR is associated with"
}

variable "ivrInitialGreeting" {
  type        = string
  description = "Initial greeting for the IVR"
}

variable "ivrFailure" {
  type        = string
  description = "IVR failure message"
}

variable "ivrCallback" {
  type        = string
  description = "IVR Callback message"
}
# ------------------------------------------------------------------------------
# Required parameters
#
# You must provide a value for each of these parameters.
# ------------------------------------------------------------------------------

variable "cdm_certificates_bucket" {
  description = "The name of the S3 bucket where the CDM certificate files live."
  nullable    = false
  type        = string
}

variable "terraform_state_bucket" {
  description = "The name of the S3 bucket where Terraform state is stored."
  nullable    = false
  type        = string
}

# ------------------------------------------------------------------------------
# Optional parameters
#
# These parameters have reasonable defaults.
# ------------------------------------------------------------------------------

variable "aws_region" {
  default     = "us-east-1"
  description = "The AWS region to deploy into (e.g. us-east-1)."
  nullable    = false
  type        = string
}

variable "cdm_certificates_objects" {
  default = [
    "cert_US_CISA_0_Root_CA.crt",
    "cert_US_CISA_1_Issuing_CA_reissued.crt",
  ]
  description = "The CDM certificate objects inside the bucket."
  nullable    = false
  type        = list(string)
}

variable "tags" {
  default = {
    Team        = "VM Fusion - Development"
    Application = "ansible-role-cdm-certificates testing"
  }
  description = "Tags to apply to all AWS resources created"
  nullable    = false
  type        = map(string)
}

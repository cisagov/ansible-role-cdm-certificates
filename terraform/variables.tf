# ------------------------------------------------------------------------------
# Optional parameters
#
# These parameters have reasonable defaults.
# ------------------------------------------------------------------------------

variable "aws_region" {
  type        = string
  description = "The AWS region to deploy into (e.g. us-east-1)."
  default     = "us-east-1"
}

variable "production_bucket_name" {
  type        = string
  description = "The name of the S3 bucket where the production CDM certificates live."
  default     = "cisa-cool-third-party-production"
}

variable "production_objects" {
  type        = list(string)
  description = "The CDM certificate objects inside the production bucket."
  default = [
    "cert_US_CISA_0_Root_CA.crt",
    "cert_US_CISA_1_Issuing_CA_reissued.crt",
  ]
}

variable "staging_bucket_name" {
  type        = string
  description = "The name of the S3 bucket where the staging CDM certificates live."
  default     = "cisa-cool-third-party-staging"
}

variable "staging_objects" {
  type        = list(string)
  description = "The CDM certificate objects inside the staging bucket."
  default = [
    "cert_US_CISA_0_Root_CA.crt",
    "cert_US_CISA_1_Issuing_CA_reissued.crt",
  ]
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to all AWS resources created"

  default = {
    Team        = "VM Fusion - Development"
    Application = "ansible-role-cdm-certificates testing"
  }
}

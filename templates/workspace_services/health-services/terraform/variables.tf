variable "workspace_id" {
  type        = string
  description = "TRE workspace ID"
}

variable "aad_authority_url" {
  type        = string
  description = "Active directory"
}

variable "tre_id" {
  type        = string
  description = "TRE ID"
}

variable "tre_resource_id" {
  type        = string
  description = "Resource ID"
}

variable "deploy_fhir" {
  type        = bool
  description = "Indicates if FHIR should be created in the Azure Health Data Services Workspace."
}

variable "fhir_kind" {
  type    = string
  default = "R4"

  description = "FHIR version that will be deployed."

  validation {
    condition     = var.fhir_kind == "" || contains(["R4", "STU3"], var.fhir_kind)
    error_message = "fhir_kind must be either 'R4' or 'STU 3' or left empty."
  }
}

variable "deploy_dicom" {
  type        = bool
  description = "Indicates if DICOM should be created in the Azure Health Data Services Workspace."
}

variable "auth_tenant_id" {
  type        = string
  description = "Used to authenticate into the AAD Tenant to get app role members"
}

variable "auth_client_id" {
  type        = string
  description = "Used to authenticate into the AAD Tenant to get app role members"
}

variable "auth_client_secret" {
  type        = string
  description = "Used to authenticate into the AAD Tenant to get app role members"
}

variable "arm_environment" {
  type = string
}

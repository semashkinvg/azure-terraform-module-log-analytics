variable "global_prefix" {
  type        = string
  description = "The global prefix for resources."
}

variable "purpose" {
  type        = string
  description = "The purpose of the resource."
}

variable "environment_code" {
  type        = string
  description = "The environment code."
}

variable "location" {
  type        = string
  description = "The Azure region."
}

variable "rg_name" {
  type        = string
  description = "The resource group name."
}

variable "sku" {
  type        = string
  default     = "Free"
  description = "The SKU of log analytics workspace."

  validation {
    condition     = contains(["Free", "PerNode", "Premium", "Standard", "Standalone", "Unlimited", "CapacityReservation", "PerGB2018"], var.sku)
    error_message = "The value should be one of these: Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, and PerGB2018"
  }
}

variable "retention_in_days" {
  type        = number
  default     = 30
  description = "The number of days logs retained."
}

variable "daily_quota_gb" {
  type        = number
  default     = 0.5
  description = "The daily logs storage quota."
}

variable "tags" {
  type        = map(string)
  description = "The resource tags."
}

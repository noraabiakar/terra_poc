variable "resource_group_name" {
  type        = string
  description = "Name of the RG"
}

variable "key_vault_id" {
  type        = string
  description = "ID of the keyvault"
}

variable "app_insights_id" {
  type        = string
  description = "ID of app insights"
}

variable "storage_account_id" {
  type        = string
  description = "ID of storage account"
}

variable "location" {
  type        = string
  description = "Location"
}

variable "name" {
  type        = string
  description = "Name of the deployment"
}

variable "stage" {
  type        = string
  description = "Name of the stage"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the RG"
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

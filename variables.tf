variable "backendrg" {
  type        = string
  description = "The name of the backend storage account resource group"
  default     = "terraform"
}

variable "backendSA" {
  type        = string
  description = "The name of the backend storage account"
  default     = "flizztffile"
}

variable "backendblob" {
  type = string
  description = "The container name for the backend config"
  default = "tfstate"
}

variable "backendkey" {
  type = string
  description = "The access key for the storage account"
  default = "terraform.tfstate"
}

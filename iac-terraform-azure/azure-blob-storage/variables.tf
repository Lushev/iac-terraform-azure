variable "resource_group_name" {
    type = string
    default = "resource_group_name"
}

variable "storage_account_name" {
    type = string
    default = "storageaccountname"
}

variable "account_tier" {
    type = string
    default = "Standard"
}

variable "location" {
    type = string
    default = "wroclaw"
}

variable "account_replication_type" {
    type = string
    default = "GRS"
}

variable "environment" {
    type = string
    default = "staging"
}

variable "storage_container_name" {
    type = string
    default = "vhds"
}

variable "container_access_type" {
    type = string
    default = "private"
}

variable "storage_blob_name" {
    type = string
    default = "my-awesome-content.zip"
}

variable "storage_blob_type" {
    type = string
    default = "Block"
}

variable "storage_blob_source" {
    type = string
    default = "some-local-file.zip"
}

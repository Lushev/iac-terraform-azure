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


variable "account_replication_type" {
    type = string
    default = "GRS"
}

variable "environment" {
    type = string
    default = "staging"
}

variable "service_plan_name" {
    type = string
    default = "serviceplanname"
}

variable "linux_function_app_name" {
    type = string
    default = "linuxfunctionappname"
}

variable "function_app_function_name" {
    type = string
    default = "functionappfunctionname"
}

variable "location" {
    type = string
    default = "wroclaw"
}

variable "os_type" {
    type = string
    default = "Linux"
}

variable "sku_name" {
    type = string
    default = "P1v2"
}

variable "language" {
    type = string
    default = "Python"
}

variable "jsonencode_name" {
    type = string
    default = "Azure"
}

variable "jsonencode_authLevel" {
    type = string
    default = "function"
}

variable "jsonencode_direction_out" {
    type = string
    default = "out"
}

variable "jsonencode_method_1" {
    type = string
    default = "get"
}

variable "jsonencode_method_2" {
    type = string
    default = "post"
}

variable "jsonencode_bindings_name" {
    type = string
    default = "req"
}

variable "jsonencode_type_httpTrigger" {
    type = string
    default = "httpTrigger"
}

variable "jsonencode_direction_in" {
    type = string
    default = "in"
}

variable "jsonencode_name_return" {
    type = string
    default = "$return"
}

variable "jsonencode_type_http" {
    type = string
    default = "http"
}
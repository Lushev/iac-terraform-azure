resource "azurerm_resource_group" "example" {
    name = var.resource_group_name
    location = var.location
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    environment = var.environment
  }
}

resource "azurerm_service_plan" "example" {
  name                = var.service_plan_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  os_type             = var.os_type
  sku_name            = var.sku_name
}

resource "azurerm_linux_function_app" "example" {
  name                = var.linux_function_app_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location

  storage_account_name       = azurerm_storage_account.example.name
  storage_account_access_key = azurerm_storage_account.example.primary_access_key
  service_plan_id            = azurerm_service_plan.example.id

  site_config {}
}

resource "azurerm_function_app_function" "example" {
  name            = var.function_app_function_name
  function_app_id = azurerm_linux_function_app.example.id
  language        = var.language
  test_data = jsonencode({
    "name" = var.jsonencode_name
  })
  config_json = jsonencode({
    "bindings" = [
      {
        "authLevel" = var.jsonencode_authLevel
        "direction" = var.jsonencode_direction_in
        "methods" = [
          var.jsonencode_method_1,
          var.jsonencode_method_2,
        ]
        "name" = var.jsonencode_bindings_name
        "type" = var.jsonencode_type_httpTrigger
      },
      {
        "direction" = var.jsonencode_direction_out
        "name"      = var.jsonencode_name_return
        "type"      = var.jsonencode_type_http
      },
    ]
  })
}
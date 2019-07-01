provider "azurerm" {
  version   = "=1.27.0"
}

resource "azurerm_resource_group" "resource_group_devacademy" {
  name     = "devacademy-terraform-rg"
  location = "West Europe"
}

resource "azurerm_servicebus_namespace" "sb_namespace" {
  name                = "devacademy-development-bus"
  location            = "${azurerm_resource_group.resource_group_devacademy.location}"
  resource_group_name = "${azurerm_resource_group.resource_group_devacademy.name}"
  sku                 = "Standard"

}
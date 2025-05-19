variable "rg_name" {

}

resource "azurerm_resource_group" "sachin" {
  count    = length(var.rg_name)
  name     = var.rg_name[count.index]
  location = "central india"
}
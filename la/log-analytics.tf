resource "azurerm_log_analytics_workspace" "default" {
  name                = "${var.global_prefix}-${var.location}-${var.environment_code}-${var.purpose}"
  location            = var.location
  resource_group_name = var.rg_name
  sku                 = var.sku
  retention_in_days   = var.retention_in_days
  daily_quota_gb      = var.daily_quota_gb
  

  tags = merge({
    environment = var.environment_code
  }, var.tags)
}
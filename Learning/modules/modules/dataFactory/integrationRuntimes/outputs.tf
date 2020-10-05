output "auth_key_1" {
    value = azurerm_data_factory_integration_runtime_self_hosted.integration_runtime.auth_key_1
    #sensitive = true
}

output "auth_key_2" {
    value = azurerm_data_factory_integration_runtime_self_hosted.integration_runtime.auth_key_2
    #sensitive = true
}
terraform {
    backend "azurerm" {
        resource_group_name  = "Learningbes"
        storage_account_name = "ddtmw2dihbessa01"
        container_name       = "ddtmw2dihbesadf01tfstate"
        key                  = "terraform.tfstate"
        access_key           = "Put_key_here"
    }
}
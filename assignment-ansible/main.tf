module "rgroup-n01650374" {
  source = "./modules/rgroup-n01650374"

  rgroup_name = "n01650374-RG"
  location    = "UK West"
  common_tags = var.common_tags
}

module "network-n01650374" {
  source = "./modules/network-n01650374"

  rgroup_name                 = module.rgroup-n01650374.rgroup_name
  location                    = module.rgroup-n01650374.location
  vnet_name                   = "n01650374-VNET"
  vnet_addr_space             = ["10.0.0.0/16"]
  subnet_name                 = "n01650374-SUBNET"
  subnet_address              = ["10.0.0.0/24"]
  network_security_group_name = "n01650374-NSG"
  common_tags                 = var.common_tags
}

module "common_services-n01650374" {
  source = "./modules/common_services-n01650374"

  location                     = module.rgroup-n01650374.location
  rgroup_name                  = module.rgroup-n01650374.rgroup_name
  log_analytics_workspace_name = "n01650374-log-analytics-workspace"
  recovery_services_vault_name = "n01650374-recovery-service-vault"
  storage_account_name         = "n01650374sa"
  common_tags                  = var.common_tags
}

module "vmlinux-n01650374" {
  source = "./modules/vmlinux-n01650374"

  linux_name = {
    "n01650374-c-vm1" : "Standard_B1ms",
    "n01650374-c-vm2" : "Standard_B1ms",
    "n01650374-c-vm3" : "Standard_B1ms"
  }
  vm_size                      = "Standard_B1ms"
  admin_username               = "n01650374vd"
  public_key_path              = "/Users/N01650374/.ssh/id_rsa.pub"
  private_key_path             = "/Users/N01650374/.ssh/id_rsa"
  os_disk_storage_account_type = "Premium_LRS"
  os_disk_size                 = 64
  os_disk_caching              = "ReadWrite"
  os_publisher                 = "RedHat"
  os_offer                     = "RHEL"
  os_sku                       = "9-LVM" 
  os_version                   = "latest"
  linux_avs                    = "n01650374-linux-avs"
  location                     = module.rgroup-n01650374.location
  rgroup_name                  = module.rgroup-n01650374.rgroup_name
  subnet_id                    = module.network-n01650374.subnet_id
  storage_account_uri          = module.common_services-n01650374.storage_account_uri
  common_tags                  = var.common_tags
}

module "vmwindows-n01650374" {
  source                               = "./modules/vmwindows-n01650374"
  windows_admin_username               = "n01650374"
  windows_admin_password               = "N@01650374"
  windows_os_disk_storage_account_type = "StandardSSD_LRS"
  windows_os_disk_size                 = 128
  windows_os_disk_caching              = "ReadWrite"
  windows_os_publisher                 = "MicrosoftWindowsServer"
  windows_os_offer                     = "WindowsServer"
  windows_os_sku                       = "2016-Datacenter"
  windows_os_version                   = "latest"
  windows_avs                          = "n01650374-windows-avs"
  windows_name                         = "n01650374-w-vm"
  windows_size                         = "Standard_B1ms"
  rgroup_name                          = module.rgroup-n01650374.rgroup_name
  location                             = module.rgroup-n01650374.location
  subnet_id                            = module.network-n01650374.subnet_id
  nb_count                             = 1
  common_tags                          = var.common_tags
}

module "datadisk-n01650374" {
  source      = "./modules/datadisk-n01650374"
  vm_ids      = concat(module.vmlinux-n01650374.linux_id, module.vmwindows-n01650374.windows_id)
  rgroup_name = module.rgroup-n01650374.rgroup_name
  location    = module.rgroup-n01650374.location
  common_tags = var.common_tags
}

module "loadbalancer-n01650374" {
  source         = "./modules/loadbalancer-n01650374"
  linux_vm_ids   = module.vmlinux-n01650374.linux_id
  linux_nic_ids  = module.vmlinux-n01650374.linux_nic_id
  linux_hostname = module.vmlinux-n01650374.linux_hostname
  resource_group = module.rgroup-n01650374.rgroup_name
  location       = module.rgroup-n01650374.location
  common_tags    = var.common_tags
}

module "database-n01650374" {
  source         = "./modules/database-n01650374"
  rgroup_name    = module.rgroup-n01650374.rgroup_name
  location       = module.rgroup-n01650374.location
  server_name    = "n01650374-postgresql-server"
  admin_username = "n01650374"
  admin_password = "N@01650374"
  database_name  = "n01650374-database"
  common_tags    = var.common_tags
}

variable "common_tags" {
  type = map(string)
  default = {
    Assignment     = "CCGC 5502 Automation Assignment"
    Name           = "Vanshika.Dcosta"
    ExpirationDate = "2024-12-31"
    Environment    = "Learning"
  }
}


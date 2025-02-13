provider "ionoscloud" {
  username = "your-username"
  password = "your-password"
}

variable "tenant_id" {}
variable "domain_name" {}
variable "pfsense_ip" {}
variable "wireguard_ip" {}
variable "gitlab_ip" {}
variable "bastion_ip" {}

resource "ionoscloud_server" "pfsense" {
  name     = "Pfsense"
  datacenter_id = var.tenant_id
  cores    = 2
  ram      = 8192
  image    = "Ubuntu-20.04"
  availability_zone = "AUTO"
  
  nic {
    lan        = 1
    dhcp       = true
    ip         = var.pfsense_ip
  }
}

resource "ionoscloud_server" "wireguard" {
  name     = "Wireguard"
  datacenter_id = var.tenant_id
  cores    = 2
  ram      = 8192
  image    = "Ubuntu-20.04"
  availability_zone = "AUTO"
  
  nic {
    lan        = 1
    dhcp       = true
    ip         = var.wireguard_ip
  }
}

resource "ionoscloud_server" "gitlab" {
  name     = "GitLab"
  datacenter_id = var.tenant_id
  cores    = 2
  ram      = 8192
  image    = "Ubuntu-20.04"
  availability_zone = "AUTO"
  
  nic {
    lan        = 1
    dhcp       = true
    ip         = var.gitlab_ip
  }
}

resource "ionoscloud_server" "bastion" {
  name     = "Bastion"
  datacenter_id = var.tenant_id
  cores    = 1
  ram      = 2048
  image    = "Ubuntu-20.04"
  availability_zone = "AUTO"
  
  nic {
    lan        = 1
    dhcp       = true
    ip         = var.bastion_ip
  }
}

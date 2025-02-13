provider "openstack" {
  auth_url    = "https://auth.cloud.ovh.net/v3"
  tenant_id   = var.tenant_id
  domain_name = var.domain_name
}

variable "tenant_id" {}
variable "domain_name" {}
variable "pfsense_ip" {}
variable "wireguard_ip" {}
variable "gitlab_ip" {}
variable "bastion_ip" {}

resource "openstack_compute_instance_v2" "pfsense" {
  name            = "Pfsense"
  image_name      = "Ubuntu 20.04"
  flavor_name     = "c2-7"
  network {
    name        = "public"
    access_ipv4 = var.pfsense_ip
  }
}

resource "openstack_compute_instance_v2" "wireguard" {
  name            = "Wireguard"
  image_name      = "Ubuntu 20.04"
  flavor_name     = "c2-7"
  network {
    name        = "public"
    access_ipv4 = var.wireguard_ip
  }
}

resource "openstack_compute_instance_v2" "gitlab" {
  name            = "GitLab"
  image_name      = "Ubuntu 20.04"
  flavor_name     = "c2-7"
  network {
    name        = "public"
    access_ipv4 = var.gitlab_ip
  }
}

resource "openstack_compute_instance_v2" "bastion" {
  name            = "Bastion"
  image_name      = "Ubuntu 20.04"
  flavor_name     = "b2-7"
  network {
    name        = "public"
    access_ipv4 = var.bastion_ip
  }
}

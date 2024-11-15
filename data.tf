data "vsphere_datacenter" "datacenter" {
  name = var.vsphere_datacenter
}

data "vsphere_network" "network" {
  name          = var.vsphere_network
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_compute_cluster" "cluster" {
  name          = var.vsphere_cluster
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_resource_pool" "pool" {
  name          = format("%s%s", data.vsphere_compute_cluster.cluster.name, "/Resources")
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_datastore" "datastore" {
  name          = var.vsphere_datastore
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_virtual_machine" "rl8_template" {
  name          = var.rl8_template
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_virtual_machine" "rl8_template_stig" {
  name          = var.rl8_template_stig
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_virtual_machine" "ubuntu22_template" {
  name          = var.ubuntu22_template
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_virtual_machine" "ubuntu24_template" {
  name          = var.ubuntu24_template
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

locals {
  os_map = {
    rl8 = data.vsphere_virtual_machine.rl8_template.uuid
   rl8_stig = data.vsphere_virtual_machine.rl8_template_stig.uuid
   ubuntu22 = data.vsphere_virtual_machine.ubuntu22_template.uuid
   ubuntu24 = data.vsphere_virtual_machine.ubuntu24_template.uuid
  }
}

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

data "vsphere_virtual_machine" "core_template" {
  name          = var.pce_core_template
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_virtual_machine" "data_template" {
  name          = var.pce_data_template
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_virtual_machine" "lb_template" {
  name          = var.lb_template
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_virtual_machine" "non_stig_template" {
  name          = var.non_stig_template
  datacenter_id = data.vsphere_datacenter.datacenter.id
}


data "vsphere_virtual_machine" "talos_template" {
  name          = var.talos_template
  datacenter_id = data.vsphere_datacenter.datacenter.id
}



locals {
  os_map = {
    pce_core = data.vsphere_virtual_machine.core_template.uuid
    pce_data = data.vsphere_virtual_machine.data_template.uuid
    lb       = data.vsphere_virtual_machine.lb_template.uuid
    non_stig = data.vsphere_virtual_machine.non_stig_template.uuid
  }
}

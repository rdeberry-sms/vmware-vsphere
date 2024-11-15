resource "vsphere_virtual_machine" "nodes" {
  for_each         = var.nodes
  name             = each.value.name
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id
  folder           = var.vsphere_folder
  guest_id         = each.value.guest_id
  enable_disk_uuid = var.disk_uuid
  num_cpus         = each.value.cpu
  memory           = each.value.memory
  wait_for_guest_ip_timeout = -1
  disk {
    label       = var.vm_linux_disk_name
    size        = each.value.disk_size_0
    unit_number = var.first_disk_unit_number
  }

  dynamic "disk" {
    for_each = can(each.value["disk_size_1"]) ? [1] : []
    content {
      label       = var.vm_second_linux_disk_name
      unit_number = var.second_disk_unit_number
      size        = each.value.disk_size_1
    }
  }

  network_interface {
    network_id = data.vsphere_network.network.id
  }
  clone {
    template_uuid = local.os_map[each.value.clone_template]
  }

  extra_config = {
    "guestinfo.metadata" = base64encode(templatefile("${path.module}/scripts/bootstrap_metadata.yaml", {
      ip_address = each.value.ip_address
      netmask    = var.netmask
      gateway    = var.gateway
      hostname   = each.value.name
      dhcp = var.dhcp
      nameservers = jsonencode(var.nameservers)
    }))
    "guestinfo.metadata.encoding" = var.encoding
    "guestinfo.userdata" = base64encode(templatefile("${path.module}/scripts/bootstrap_userdata.yaml", {
      script        = file("${path.module}/userdata.txt")
      root_passwd   = random_password.root_passwd.result
      hashed_passwd = htpasswd_password.user.sha512
      user          = var.user_name
      ssh_keys      = var.ssh_keys
     ntpservers = jsonencode(var.ntpservers)
    }))
    "guestinfo.userdata.encoding" = var.encoding
  }
}



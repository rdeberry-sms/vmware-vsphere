## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5.5 |
| <a name="requirement_vsphere"></a> [vsphere](#requirement\_vsphere) | ~> 2.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vsphere"></a> [vsphere](#provider\_vsphere) | 2.5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vsphere_virtual_machine.linux_host](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/resources/virtual_machine) | resource |
| [vsphere_virtual_machine.windows_host](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/resources/virtual_machine) | resource |
| [vsphere_compute_cluster.cluster](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/data-sources/compute_cluster) | data source |
| [vsphere_datacenter.datacenter](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/data-sources/datacenter) | data source |
| [vsphere_datastore.datastore](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/data-sources/datastore) | data source |
| [vsphere_network.network](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/data-sources/network) | data source |
| [vsphere_resource_pool.pool](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/data-sources/resource_pool) | data source |
| [vsphere_virtual_machine.linuxtemplate](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/data-sources/virtual_machine) | data source |
| [vsphere_virtual_machine.template](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/data-sources/virtual_machine) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_home"></a> [create\_home](#input\_create\_home) | create home folder or not | `bool` | `false` | no |
| <a name="input_public_key"></a> [public\_key](#input\_public\_key) | public key | `list(string)` | <pre>[<br>  "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC4DTYM9uNCpxc7Yfe0cKm9WZsiAwFWDw2G4BgpIRTwCrSD9ketGOtP3h7hHma0ZY0N/b1dT1l3GON265wVNm/qIO0plfINuYsmaAJQNahmN8dp46q4Xde4yJQM2VO/c5Ygu3HaJX9C9WetxAmEKklksCBvgy326ZufZELSgIMPoDMFyfyU3qmMoxvxnEcgDiMoeUGG/rWBpM5zvku/AXGdLhclXMyxW6Kn9dZcWIPCNNzgrXQ50dm76LdbMhTLydyqIsuvPQNgC4KdGY/9qVnnGTSoZa7K0CTzOsd/2s4q96mhkUfNbGbd8E7o6Td6n7iir/lPzO2Scqra0bcnkKya+jcOXs77BC6MW+ms+aLu7qDmo8TO4GoVotuYYmA1pd98SjWZGcCG2CnpGWPRC3u9C7xzAAV1hQtBxvonkeup/wIfDd+d4pTpxBNfp/L0oH95b06zBod0InbUSN4KdKOVFKOqm6/Pg45J62SBx7KfLffnuQyo7ntKvlsskqOKqzU= rdeberrysms.com@SMS-MB00006.local",<br>  "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDNI7l9iRXuyMkl/zMDFO7onCBGQerfqMIaW1v+Nrx35Q502JJVw/PrPdQ863oF1Zwn8UzP3Z9Qc+E+ErUSSxhOaYIe2+f0uXifoDTmpBBU9jtE5JkIT6nC2fFjMu/gGLKiJBzqxvuLf7SD7DifHhkoKMdBi9i46BGxdWMyJlDqvPGN3w+tkgqorLgTOJt/2xiplfU6Ld7wed60VlwEooLXjR7AswkpKw+vPNy7z0p3Cpv8kEhZHdT2h9zoxlWjcAoqBBe5yHyev5i8xNrx0xmhSA/bgiAlDHJfzLoQIqWeOxSeN+QchHpKN4gZsgIfLOLT4FslI7bTWJQr8qot1AscCFQhpDi/V09YCH/tYLziOKqMGNk/YbNCJo7V0XkR+tkkQ+QbnuZ7LU4CvUmxSJMqxLSRBq30gi2KHcZ48777DNtgP/NGqLaRhGMOMjJE2jKcmYuzuYLMdzoeZgqGWHJXnSJUmQjqg+DBm0fZqQisogdyV9U5kbwZWlpKHfxrdkU= root@pce-lb-1"<br>]</pre> | no |
| <a name="input_user"></a> [user](#input\_user) | Name of the user you want to create | `string` | `"pceadmin"` | no |
| <a name="input_vm_linux_count"></a> [vm\_linux\_count](#input\_vm\_linux\_count) | Size of the disk (in GB) | `number` | `0` | no |
| <a name="input_vm_linux_cpu"></a> [vm\_linux\_cpu](#input\_vm\_linux\_cpu) | # of VCPU's | `number` | `2` | no |
| <a name="input_vm_linux_disk_name"></a> [vm\_linux\_disk\_name](#input\_vm\_linux\_disk\_name) | Name of Scsi/ssd disk | `string` | `"disk0"` | no |
| <a name="input_vm_linux_disk_size"></a> [vm\_linux\_disk\_size](#input\_vm\_linux\_disk\_size) | Size of the disk (in GB) | `number` | `60` | no |
| <a name="input_vm_linux_guest_id"></a> [vm\_linux\_guest\_id](#input\_vm\_linux\_guest\_id) | Name of guest id type | `string` | `"ubuntu64Guest"` | no |
| <a name="input_vm_linux_mem"></a> [vm\_linux\_mem](#input\_vm\_linux\_mem) | Memory (in GB) | `number` | `4096` | no |
| <a name="input_vm_windows_count"></a> [vm\_windows\_count](#input\_vm\_windows\_count) | Size of the disk (in GB) | `number` | `4` | no |
| <a name="input_vm_windows_cpu"></a> [vm\_windows\_cpu](#input\_vm\_windows\_cpu) | # of VCPU's | `number` | `2` | no |
| <a name="input_vm_windows_disk_name"></a> [vm\_windows\_disk\_name](#input\_vm\_windows\_disk\_name) | Name of Scsi/ssd disk | `string` | `"disk0"` | no |
| <a name="input_vm_windows_disk_size"></a> [vm\_windows\_disk\_size](#input\_vm\_windows\_disk\_size) | Size of the disk (in GB) | `number` | `120` | no |
| <a name="input_vm_windows_efi_enabled"></a> [vm\_windows\_efi\_enabled](#input\_vm\_windows\_efi\_enabled) | EFI enabled or not | `bool` | `true` | no |
| <a name="input_vm_windows_firmware_type"></a> [vm\_windows\_firmware\_type](#input\_vm\_windows\_firmware\_type) | Name of EFI type | `string` | `"efi"` | no |
| <a name="input_vm_windows_guest_id"></a> [vm\_windows\_guest\_id](#input\_vm\_windows\_guest\_id) | Name of guest id type | `string` | `"windows2019srv_64Guest"` | no |
| <a name="input_vm_windows_mem"></a> [vm\_windows\_mem](#input\_vm\_windows\_mem) | Memory (in GB) | `number` | `4096` | no |
| <a name="input_vsphere_cluster"></a> [vsphere\_cluster](#input\_vsphere\_cluster) | The name or absolute path to the cluster | `string` | `"Compute"` | no |
| <a name="input_vsphere_content_library_ovf"></a> [vsphere\_content\_library\_ovf](#input\_vsphere\_content\_library\_ovf) | The name of the content library item | `string` | `"windows-server-2019-standard-dexp-custom"` | no |
| <a name="input_vsphere_datacenter"></a> [vsphere\_datacenter](#input\_vsphere\_datacenter) | The name of the datacenter. This can be a name or path. Can be omitted if there is only one datacenter in the inventory | `string` | `"dc1"` | no |
| <a name="input_vsphere_datastore"></a> [vsphere\_datastore](#input\_vsphere\_datastore) | The name of the datastore. This can be a name or path | `string` | `"vsanDatastore"` | no |
| <a name="input_vsphere_folder"></a> [vsphere\_folder](#input\_vsphere\_folder) | The path to the virtual machine folder in which to place the virtual machine, relative to the datacenter path (/<datacenter-name>/vm). For example, /dc-01/vm/foo | `string` | `"Illumio POC"` | no |
| <a name="input_vsphere_network"></a> [vsphere\_network](#input\_vsphere\_network) | The name of the network. This can be a name or path | `string` | `"v433-priv"` | no |

## Outputs

No outputs.

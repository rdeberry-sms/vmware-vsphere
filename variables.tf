variable "vsphere_datacenter" {
  description = "The name of the datacenter. This can be a name or path. Can be omitted if there is only one datacenter in the inventory"
  type        = string
}

variable "vsphere_folder" {
  description = "The path to the virtual machine folder in which to place the virtual machine, relative to the datacenter path (/<datacenter-name>/vm). For example, /dc-01/vm/foo"
  type        = string
}

variable "vsphere_network" {
  description = "The name of the network. This can be a name or path"
  type        = string
}

variable "vm_linux_disk_name" {
  description = "Name of Scsi/ssd disk"
  type        = string
  default     = "disk0"
}

variable "vm_second_linux_disk_name" {
  description = "Name of Scsi/ssd disk"
  type        = string
  default     = "disk1"
}

variable "first_disk_unit_number" {
  description = "Name of Scsi/ssd disk"
  type        = number
  default     = 0
}

variable "second_disk_unit_number" {
  description = "Name of Scsi/ssd disk"
  type        = number
  default     = 1
}

variable "vm_linux_guest_id" {
  description = "Name of guest id type"
  type        = string
  default     = "rhel8_64Guest"
  validation {
    condition     = var.vm_linux_guest_id == "rhel8_64Guest" || var.vm_linux_guest_id == "rhel9_64Guest"
    error_message = "The guest OS type must be either 'rhel8_64Guest' or 'rhel9_64Guest'."
  }
}

variable "vsphere_cluster" {
  description = "The name or absolute path to the cluster"
  type        = string
}

variable "vsphere_datastore" {
  description = "The name of the datastore. This can be a name or path"
  type        = string
}

variable "encoding" {
  description = "Encoding"
  type        = string
  default     = "base64"
}

variable "pce_core_template" {
  description = "PCE Core Template Name"
  type        = string
  default     = "pce_core_template"
}
variable "pce_data_template" {
  description = "PCE Data Template Name"
  type        = string
  default     = "pce_data_template"
}

variable "pce_core9_template" {
  description = "PCE Core Template Name"
  type        = string
  default     = "pce_core9_template"
}
variable "pce_data9_template" {
  description = "PCE Data Template Name"
  type        = string
  default     = "pce_data9_template"
}

variable "non_stig_template" {
  description = "PCE Data Template Name"
  type        = string
  default     = "el8_no_stig_template"
}

variable "lb_template" {
  description = "PCE Data Template Name"
  type        = string
  default     = "el8_stig_template"
}


variable "commands" {
  type    = list(string)
  default = []
}

variable "user_name" {
  description = "Username"
  type        = string
}

variable "talos_template" {
  description = "PCE Error Template Name"
  type        = string
  default     = "talos-template"
}

variable "ssh_keys" {
  description = "List of SSH Keys"
  default     = []
  type        = list(string)
}

variable "nodes" {
  description = "Nodes"
  type        = map(any)
  default     = {}
}

variable "disk_uuid" {
  description = "The name or absolute path to the cluster"
  type        = bool
  default     = true
}

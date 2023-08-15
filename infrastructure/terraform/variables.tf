variable "iam_token" {
  type        = string
  description = "yc_iam_token"
  sensitive   = true
}

variable "cloud_id" {
  type        = string
  default     = "b1ghuo032au3bb67hbm9"
}

variable "folder_id" {
  type        = string
  default     = "b1glkhudkv5hmvnv7st6"
}

variable "zone" {
  type        = string
  default     = "ru-central1-a"
}

variable "v4_cidr_blocks" {
  type        = string
  default     = "192.168.0.0/16"
}

variable "platform_id" {
  type        = string
  default     = "standard-v3"
}

variable "node_memory" {
  type        = number
  default     = 3
}

variable "node_cores" {
  type        = number
  default     = 2
}

variable "node_core_fraction" {
  type        = number
  default     = 20
}

variable "boot_disk_type" {
  type        = string
  default     = "network-hdd"
}

variable "boot_disk_size" {
  type        = number
  default     = 64
}

variable "nodes_count" {
  type        = number
  default     = 2
}

variable "k8s_version" {
  type        = string
  default     = "1.23"
}
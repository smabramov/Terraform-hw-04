###cloud vars

variable "cloud_id" {
  type        = string
  default     = "b1gttf81lmg2v759uobi"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default = "b1g8381i07tsfq06pnmc"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

###common vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "your_ssh_ed25519_key"
  description = "ssh-keygen -t ed25519"
}

###example vm_web var
variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "example vm_web_ prefix"
}

###example vm_db var
variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "example vm_db_ prefix"
}

variable "ssh_public_key" {
  type    = string
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGxDA6ZQM1u1nDL0NqZz/rgrzGd5zbrbWKV3xuFp29zL serg@ubuntu"
 }

variable "test_vm" {
  default = { 
  source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main",
  env_name       = "develop",
  subnet_zones   = "ru-central1-a",
  instance_name  = "web",
  instance_count = 1,
  image_family   = "ubuntu-2004-lts",
  public_ip      = true,
  serial-port-enable = 1
  }
}

variable "example_vm" {
  default = { 
  source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main",
  env_name       = "stage",
  subnet_zones   = "ru-central1-a",
  instance_name  = "web-stage",
  instance_count = 1,
  image_family   = "ubuntu-2004-lts",
  public_ip      = true,
  serial-port-enable = 1
  }
}

variable "v4_cidr_block"{
  type=list(string)
  default=["10.0.1.0/24"]
} 

variable "env_name" {
  type        = string 
  description = "VPC network&subnet name"
  default = "develop"
}




terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.61.0"
    }
  }

  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "momo-store-storage"
    region     = "ru-central1"
    key        = "terraform/terraform.tfstate"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
} 

provider "yandex" {
  token     = var.iam_token 
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone
}
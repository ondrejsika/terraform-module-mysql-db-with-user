terraform {
  required_providers {
    mysql = {
      source = "petoju/mysql"
      version = "3.0.36"
    }
  }
}

provider "mysql" {
  endpoint = "127.0.0.1:13306"
  username = "root"
}
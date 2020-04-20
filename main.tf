variable "db" {}
variable "password" {}

resource "mysql_user" "user" {
  user = var.db
  host = "%"
  plaintext_password = var.password
}

resource "mysql_database" "db" {
  name = var.db
}

resource "mysql_grant" "grant" {
  user = mysql_user.user.user
  host = "%"
  database = mysql_database.db.name
  privileges = ["ALL PRIVILEGES"]
}

output "db" {
  value = var.db
}
output "user" {
  value = var.db
}

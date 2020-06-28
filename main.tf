###################################################
# Create MySQL database, user, privileges
###################################################

resource "mysql_user" "user" {
  count              = var.create_dbuser ? 1 : 0
  user               = var.user
  host               = var.host
  plaintext_password = var.password
}

resource "mysql_database" "db" {
  count                 = var.create_dbuser ? 1 : 0
  name                  = var.db
  default_character_set = var.db_character_set
  default_collation     = var.db_collation
}

resource "mysql_grant" "grant" {
  count      = var.create_dbuser ? 1 : 0
  user       = mysql_user.user[0].user
  host       = var.host
  database   = mysql_database.db[0].name
  privileges = var.privileges
}

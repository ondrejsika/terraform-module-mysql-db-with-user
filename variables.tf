variable "db" {
  type        = string
  description = "The name of the database"
  default     = "test"
}

variable "db_character_set" {
  type        = string
  description = "Character set to use when a table is created without specifying an explicit character set."
  default     = "utf8"
}

variable "db_collation" {
  type        = string
  description = "Character set collation to use when a table is created without specifying an explicit collation."
  default     = "utf8_general_ci"
}

variable "user" {
  type        = string
  description = "The name of the user."
  default     = "test"
}

variable "password" {
  type        = string
  description = "Character set collation to use when a table is created without specifying an explicit collation."
  default     = "password"
}

variable "host" {
  type        = string
  description = "Allow user to connect from a specific host, default to all"
  default     = "%"
}

variable "privileges" {
  type        = list(string)
  description = "A list of privileges to grant to the user."
  default     = ["ALL PRIVILEGES"]
}

variable "create_dbuser" {
  description = "Create mysql database and user ."
  type        = bool
  default     = true
}
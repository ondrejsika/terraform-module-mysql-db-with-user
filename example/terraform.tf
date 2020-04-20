provider "mysql" {
  endpoint = "127.0.0.1:13306"
  username = "root"
  password = "example"
}

module "foo" {
  source = "./.."
  db = "foo"
  password = "foo"
}

module "bar" {
  source = "./.."
  db = "bar"
  password = "bar"
}

provider "vault" {
    address = "http://44.203.215.181:8200/"
    token = var.token
}

data "vault_generic_secret" "secret_data" {
    path = "test/demo"
}



resource "local_file" "aswq"  {
    filename = "/tmp/1"
    content = data.vault_generic_secret.secret_data.data["username"]
}
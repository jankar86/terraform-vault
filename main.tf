provider "vault" {
  # It is strongly recommended to configure this provider through the
  # environment variables described above, so that each user can have
  # separate credentials set in the environment.
  #
  # This will default to using $VAULT_ADDR
  # But can be set explicitly
  # address = "https://vault.example.net:8200"
#  namespace = "test1"

}



#### Read a secret #####

data "vault_generic_secret" "secrets" {
  path = "secrets/names"
}

output secretesNames {
value = "${data.vault_generic_secret.secrets.data["super"]}"
}

resource "tls_private_key" "my_key" {
  algorithm = "RSA"
}

resource "local_file" "name2" {
  filename = "../keys/my_private_key_pem"
  content = tls_private_key.my_key.private_key_pem
}


data "external" "remote_write_token" {
  program = ["sh", "${path.module}/scripts/get_token.sh"]
  query = {
    scope = var.remote_write_token_scope
  }
}
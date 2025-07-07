resource "aws_api_gateway_rest_api" "New_API" {
  name = var.name
  endpoint_configuration {
    types = var.endpoint_types
  }
  api_key_source = var.api_key_source

  lifecycle {
    ignore_changes = [tags]
  }
}

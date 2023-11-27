resource "aws_api_gateway_rest_api" "New_API" {
    name = var.name
    endpoint_configuration {
    types = var.endpoint_types
  }
    lifecycle {
    ignore_changes = [tags]
  }

}
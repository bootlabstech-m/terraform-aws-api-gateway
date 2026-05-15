############################
# main.tf
############################

# REST API Gateway (v1)
resource "aws_api_gateway_rest_api" "rest_api" {
  count = upper(var.api_type) == "REST" ? 1 : 0

  name = var.name

  endpoint_configuration {
    types = var.endpoint_types
  }

  api_key_source = var.api_key_source

  lifecycle {
    ignore_changes = [tags]
  }
}

# HTTP API Gateway (v2)
resource "aws_apigatewayv2_api" "http_api" {
  count = upper(var.api_type) == "HTTP" ? 1 : 0

  name          = var.name
  protocol_type = var.protocol_type

  lifecycle {
    ignore_changes = [tags]
  }
}
resource "aws_api_gateway_rest_api" "New_API" {
    name = var.api_name
    endpoint_configuration {
    types = var.endpoint_types
  }
}

resource "aws_api_gateway_resource" "MyResource" {
  rest_api_id = aws_api_gateway_rest_api.New_API.id
  parent_id   = aws_api_gateway_rest_api.New_API.root_resource_id
  path_part   = var.resource_name
}

resource "aws_api_gateway_method" "MyDemoMethod" {
  rest_api_id   = aws_api_gateway_rest_api.New_API.id
  resource_id   = aws_api_gateway_resource.MyResource.id
  http_method   = var.http_method
  authorization = var.authorization
}
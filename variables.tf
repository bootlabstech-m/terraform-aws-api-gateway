############################
# variables.tf
############################

variable "api_type" {
  description = "Specifies the type of API Gateway to create. Supported values are REST (API Gateway v1) and HTTP (API Gateway v2)."

  type = string

  validation {
    condition     = contains(["REST", "HTTP"], upper(var.api_type))
    error_message = "The api_type value must be either REST or HTTP."
  }
}

variable "name" {
  description = "Name of the API Gateway resource. This value will be used as the API name in AWS."
  type = string
}

variable "endpoint_types" {
  description = "List of endpoint types for the REST API Gateway. Supported values are EDGE, REGIONAL, or PRIVATE. Applicable only when api_type is REST."

  type    = list(string)
  default = ["REGIONAL"]
}

variable "api_key_source" {
  description = "Source of the API key for requests to the REST API Gateway. Valid values are HEADER or AUTHORIZER. Applicable only for REST APIs."
  type    = string
  default = "HEADER"
}

variable "protocol_type" {
  description = "Protocol type for the API Gateway v2 API. Supported values are HTTP or WEBSOCKET. Applicable only when api_type is HTTP."

  type    = string
  default = "HTTP"
}

variable "region" {
  description = "Map of tags to assign to the API Gateway resources for identification and cost tracking."
  type = string
}

variable "role_arn" {
  description = "role arn"
  type = string
}
variable "region" {
    type = string
}
variable "name" {
    type = string
    description = "this is the name of rest api "
}
variable "endpoint_types" {
  description = "List of endpoint types: REGIONAL, EDGE, PRIVATE"
  type        = list(string)
  default     = ["REGIONAL"]
}

variable "role_arn" {
    description = "mPaaS AWS IAM ARN role" 
    type = string
} 
variable "api_key_source" {
  description = "The source of the API key for requests. Valid values: HEADER or AUTHORIZER"
  type        = string
  default     = "HEADER"
}
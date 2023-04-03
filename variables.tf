variable "region" {
    type = string
}
variable "api_name" {
    type = string
    description = "this is the name of rest api "
}
variable "endpoint_types" {
    type = list(string)
    description = "this is the endpoint of rest api "
}

variable "role_arn" {
    description = "mPaaS AWS IAM ARN role" 
    type = string
} 

variable "resource_name" {
  type = string
  description = "Refers to the resource name for API gateway method"
}

variable "http_method" {
  type = string
  description = "Refers to the http method for an api call (GET,POST,ANY)"
}

variable "authorization" {
  type = string
  description = "AUthorization method"
}

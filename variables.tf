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
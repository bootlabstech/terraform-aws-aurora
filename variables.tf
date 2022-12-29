variable "aurora_details" {
  description = "The aurora cluster details"
  type        = list(any)
}
variable "region" {
  description = "The region for the resource"
  type        = string
}
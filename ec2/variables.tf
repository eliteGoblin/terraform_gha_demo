variable "region" {
  default = "ap-southeast-2"
}

variable "instance_count" {
  description = "Number of instances to create"
  type        = number
}

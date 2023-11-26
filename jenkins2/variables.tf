


variable "region" {
  default     = "us-west-2"
  type        = string
  description = "Region of the VPC"
}


variable "dev_cidr" {
type = string
}

variable "qa_cidr" {
type = string
}

variable "prod_cidr" {
type = string
}

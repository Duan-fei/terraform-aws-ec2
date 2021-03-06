variable "count" {
  description = "Number of instances to start"
}

variable "ami" {
  description = "Base mirror id"
}

variable "type" {
  description = "The type of instance to start"
}

variable "key_name" {
  description = "The name of the secret key"
}

variable "monitor" {
  description = "Whether detailed monitoring needs to be initiated"
}

variable "subnet_id" {
  description = "Subnet ID"
}

variable "vpc_ids" {
  description = "VPC security groups that need to be set up"
  type = "list"
}

variable "termination" {
  description = "Whether to enable terminate protection mode"
}

variable "tag_name" {
  description = "Label to start the instance"
}

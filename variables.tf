variable "cpu" {
  default = 256
}

variable "memory" {
  default = 512
}

variable "name" {
  default = "fargate-demo"
}

variable "pod_count" {
  default = "3"
}

variable "port" {
  default = 80
}

variable "protocol" {
  default = "HTTP"
}

variable "region" {
  default = "eu-west-2"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

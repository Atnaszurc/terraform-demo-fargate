variable "container_name" {
  type    = string
  default = "ecsdemo-frontend"
}

variable "container_port" {
  type    = number
  default = 3000
}

variable "enable_flow_log" {
  type    = bool
  default = true
}

variable "region" {
  type    = string
  default = "eu-west-1"
}

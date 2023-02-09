variable "default_tags" {
  type    = map
}

variable "cluster_identifier" {
  type        = string
}

variable "engine" {
  type        = string
}

variable "engine_version" {
  type        = string
  default     = ""
}

variable "availability_zones" {
  type        = list(string)
}

variable "database_name" {
  type        = string
}

variable "db_subnet_group_name" {
  type        = string
}

variable "vpc_security_group_ids" {
  type        = list(string)
}

variable "instance_count" {
  type        = number
  default     = 1
}

variable "instance_class" {
  type        = string
}

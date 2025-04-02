variable "project_name" {
  type = string
}

variable "region" {
  type = string
}

variable "vpc_cidr" {
  description = "CIDR principal da VPC"
  type        = string
}

variable "vpc_additional_cidrs" {
  description = "Lista de CIDR's adicionais da VPC"
  type        = list(string)
  default     = []
}

variable "public_subnets" {
  description = "Lista de Public Subnets da VPC"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}

variable "private_subnets" {
  description = "Lista de Private Subnets da VPC"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}

variable "database_subnets" {
  description = "Lista de Database Subnets da VPC"
  default     = []
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}
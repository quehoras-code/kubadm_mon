variable "name" {
    type = string
}

variable "hostname" {
    type = string
}

variable "cores" {
    type = number
    default = 2
}

variable "memory" {
    type = number
    default = 2
}

variable "core_fraction" {
    type = number
    default = 20
}

variable "disk_type" {
    type = string
    default = "network-hdd"
}

variable "image_id" {
    type = string
    default = "fd801rku4j14mv7fs703"
}

variable "disk_size" {
    type = number
    default = 8
}

variable "subnet_id" {
    type = string
}

variable "nat" {
    type = bool
}

variable "user_data" {
    type    = string
    default = null
}
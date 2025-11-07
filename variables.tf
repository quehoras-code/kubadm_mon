variable "token" {
    type = string
    description = "Oauth token"
}

variable "cloud_id" {
    type = string
    description = "Cloud id"
}

variable "folder_id" {
    type = string
    description = "Folder id"
}

variable "compute_default_zone" {
    default = "ru-central1-a"
    type = string
    description = "Compute zone"
}
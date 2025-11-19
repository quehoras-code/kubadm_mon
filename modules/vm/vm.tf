resource "yandex_compute_instance" "vm" {
    name = var.name
    hostname = var.hostname

    resources {
        cores = var.cores
        memory = var.memory
        core_fraction = var.core_fraction
    }

    boot_disk {
        initialize_params {
            type = var.disk_type
            image_id = var.image_id
            size = var.disk_size
        }
    }

    network_interface {
        subnet_id = var.subnet_id
        nat = var.nat
    }

    metadata = {
        user-data = var.user_data
    }
}
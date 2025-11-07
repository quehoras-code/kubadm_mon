resource "yandex_compute_instance" "prometheus_node" {
    name = "prometheus-node"
    hostname = "prometheus-node"
    platform_id = "standard-v1"
    resources {
        cores = 2
        memory = 1
        core_fraction = 20
    }
    boot_disk {
        initialize_params {
            type = "network-hdd"
            image_id = data.yandex_compute_image.debian.id
            size = 8
        }
    }
    network_interface {
        subnet_id = yandex_vpc_subnet.subnetwork.id
        nat = true
    }
    metadata = {
        user-data = local.user_data
    }
}
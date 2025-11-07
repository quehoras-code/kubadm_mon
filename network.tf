resource "yandex_vpc_network" "network" {
    name = "network"
}

resource "yandex_vpc_subnet" "subnetwork" {
    name = "subnetwork"
    network_id = yandex_vpc_network.network.id
    zone = var.compute_default_zone
    v4_cidr_blocks = ["10.6.0.0/24"]
}
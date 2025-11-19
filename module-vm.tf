module "simple-vm" {
    source = "./modules/vm"
    name = "zalupa"
    hostname = "zalupa"
    core_fraction = 20
    disk_type = "network-hdd"
    image_id = data.yandex_compute_image.debian.id
    subnet_id = yandex_vpc_subnet.subnetwork.id
    nat = true
    user_data = local.user_data
}
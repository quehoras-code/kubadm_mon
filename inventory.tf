resource "local_file" "inventory"{
    filename = "./ansible/inventory/inventory.txt"
    content = templatefile("inventory.tftpl", {
        prometheus_node = yandex_compute_instance.prometheus_node, 
        grafana_node = yandex_compute_instance.grafana_node, 
        k8s_masters = yandex_compute_instance.k8s_master,
        k8s_workers = yandex_compute_instance.k8s_worker
        })
}
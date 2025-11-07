output "masters_ip" {
  value = [for node in yandex_compute_instance.k8s_master : node.network_interface[0].nat_ip_address]
}

output "workers_ip" {
    value = [for node in yandex_compute_instance.k8s_worker : node.network_interface[0].nat_ip_address]
}

output "prometheus_ip" {
    value = yandex_compute_instance.prometheus_node.network_interface[0].nat_ip_address
}

output "grafana_ip" {
    value = yandex_compute_instance.grafana_node.network_interface[0].nat_ip_address
}
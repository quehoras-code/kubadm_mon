resource "null_resource" "wait_vms" {

  provisioner "local-exec" {
    command = "sleep 60"
  }
  depends_on = [local_file.inventory]
}

resource "null_resource" "run_playbook" {

  provisioner "local-exec" {
    command = "ANSIBLE_CONFIG=./ansible/ansible.cfg ansible-playbook -i ./ansible/inventory/inventory.txt ./ansible/playbook.yml"
  }
  depends_on = [null_resource.wait_vms]
}
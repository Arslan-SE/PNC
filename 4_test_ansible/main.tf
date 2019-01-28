resource "null_resource" "run-ansible-playbook" {

  count = "${var.instances}"

  connection {
    type = "ssh"
    host = "${var.ansible_host_addr}"
    user = "ubuntu"
    private_key = "${var.ssh_private_key}"
  }

  provisioner "remote-exec" {
    inline = [
     "ansible-playbook ~/ansible-samples/${var.app}.yml -e 'ansible_python_interpreter=/usr/bin/python3' -i ${element(vsphere_virtual_machine.vm.*.default_ip_address, count.index)},",
    ]
  }

#  depends_on = ["vsphere_virtual_machine.vm"]

}
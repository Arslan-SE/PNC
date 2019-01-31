output "datacenterId" {
  value = "${data.vsphere_datacenter.dc.id}"
}

output "clusterId" {
  value = "${data.vsphere_compute_cluster.compute_cluster.id}"
}

output "vnetId" {
  value = "${data.vsphere_network.network.id}"
}

output "datastoreId" {
  value = "${data.vsphere_datastore.datastore.id}"
}

output "vmtemplateId" {
  value = "${data.vsphere_virtual_machine.template.id}"
}

module "test" {
  source = "../modules/vsphere/base"
    vmtemplate = "UbuntuTemplate"
    dc = "PacketDatacenter"
    cluster = "MainCluster"
    datastore = "datastore1"
    vnet = "VM Network"
}
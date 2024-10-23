module "third-machine" {
    source = "../funmi-module"
    ami = var.ami
  instance_type = var.instance_type
    node_name = var.prod-1-name
  sg_name        = var.prod-1-sg-name
  ingress_port_1 = var.prod-1-port-1
  ingress_port_2 = var.prod-1-port-2
}
module "forth-machine" {
    source = "../funmi-module"
    ami = var.ami
  instance_type = var.instance_type
    node_name = var.prod-2-name
  sg_name        = var.prod-2-sg-name
  ingress_port_1 = var.prod-2-port-1
  ingress_port_2 = var.prod-2-port-2
}
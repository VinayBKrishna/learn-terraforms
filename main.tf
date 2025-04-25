module "ec2_instance" {
    for_each = var.instance
    source = "./modules/ec2_instance"
    ami_id = each.value.ami_id
    ec2_name = each.key
    instance_type = each.value.instance_type

}


module "vpc_instance" {
    for_each = module.ec2_instance
    source = "./modules/vpc_instance"
    name = each.key
    zone_id = var.zone_id
    record = [module.ec2_instance[each.key].ec2_output.private_ip]
}


output "list_vps" {
    value = module.vpc_instance
}
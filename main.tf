module "ec2_instance" {
    for_each = var.instance
    source = "./modules/ec2_instance"
    ami_id = each.value.ami_id
    ec2_name = each.key
    instance_type = each.value.instance_type

}

output "main_output" {
    value = module.ec2_instance.ec2_output.key_name[0]
}
# module "vpc_instance" {
#     for_each = var.instance
#     source = "./modules/vpc_instance"
#     name = each.key
#     zone_id = var.zone_id
#     record = []
# }



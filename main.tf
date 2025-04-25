resource "null_resource" "testing" {
    count = 10
}

variable "list" {
    default = [
        1,2,3,4]
}

output "list_output" {
    value = { for index,value in var.list: index => values }
}
resource "null_resource" "testing" {
    count = 10
}

variable "list" {
    default = [
        {
            vin = "any",
            val = 10

        },{
            vin = "to",
            val = 4

        }]
}

output "list_output" {
    value = { for index,value in var.list: index => value }
}
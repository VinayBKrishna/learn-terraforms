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

locals  {
    squared = { for index,value in var.list: index => value.vin }
}

output "two_2" {
    value = count.index
}
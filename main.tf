variable "x" {
    default = 10

}

variable "y" {
    default = 11
}

output "x" {
    value = var.x

}

output "y" {
    value = var.y

}

variable "data" {}

output "data" {
    value = "result from other file -${var.data.name} "
}

variable "data2" {}


output "data2" {
    value = "result from other file two data -${var.data2.name} "
}

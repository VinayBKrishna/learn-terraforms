variable "x" {
    default = 10

}

variable "y" {
    default = 11
}

output "x" {
    value = var.x
    value = var.y

}
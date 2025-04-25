
resource "null_resource" "this" {
  provisioner "local-exec" {
    command = "echo ${var.text_to_print} is the sentence"
  }



}


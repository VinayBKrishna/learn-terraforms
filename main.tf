module "text_print" {
    source = "./modules"
    text_to_print = "this is 1st sentence"
}

module "text_print2" {
    source = "./modules"
    text_to_print = "this is 2nd sentence"
}




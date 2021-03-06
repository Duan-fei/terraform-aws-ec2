provider "aws" {
  region = "cn-northwest-1"
}

module "ec2" {
  source          = "./modules/ec2"
  count           = "${var.count}"
  ami             = "${var.amis}"
  type            = "${var.type}"
  key_name        = "${var.key_name}"
  monitor         = "${var.monitor}"
  subnet_id       = "${var.subnet_id}"
  vpc_ids         = ["${var.vpc_ids}"]
  termination     = "${var.termination}"
  tag_name        = "${var.tag_name}"
}

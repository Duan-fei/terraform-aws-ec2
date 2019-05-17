provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

module "ec2" {
  source          = "./modules/ec2"
  count           = "${var.count}"
  ami             = "${lookup(var.amis, var.region)}"
  type            = "${var.type}"
  key_name        = "${var.key_name}"
  monitor         = "${var.monitor}"
  subnet_id       = "${var.subnet_id}"
  vpc_ids         = ["${var.vpc_ids}"]
  termination     = "${var.termination}"
  tag_name        = "${var.tag_name}"
}

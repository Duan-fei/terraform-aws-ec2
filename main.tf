provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "this" {
  #count           = "${var.count}"
  ami             = "${var.ami}"
  instance_type   = "${var.type}"
  key_name        = "${var.key_name}"
  monitoring      = "${var.monitor}"
  subnet_id       = "${var.subnet_id}"
  vpc_security_group_ids = ["${var.vpc_ids}"]
  disable_api_termination = "${var.termination}"

  tags {
    Name = "${var.tag_name}-${count.index + 1}"
  }
}

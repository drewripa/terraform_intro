provider "aws" {
  access_key  = "${var.access_key}"
  secret_key  = "${var.secret_key}"
  region      = "${var.region}"
}

resource "aws_instance" "firstConfig" {
  ami           = "ami-96c456ef"
  instance_type = "t2.micro"
}

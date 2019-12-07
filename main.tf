provider "aws" {

   access_key = "${var.aws_access_key}"

   secret_key = "${var.aws_secret_key}"

   region     = "${var.aws_region}"

 }

resource "aws_instance" "instance" {

ami = "ami-04b9e92b5572fa0d1"

instance_type = "t2.micro"

}


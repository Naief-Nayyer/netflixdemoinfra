provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-0f214d1b3d031dc53"
instance_type = "t2.medium"
key_name = "CLOUD9INE"
vpc_security_group_ids = ["sg-09b96ddc5bbcbe4c5"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "AppServer-1", "AppServer-2", "Monitoring server"]
}

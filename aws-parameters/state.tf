terraform {
  backend "s3" {}
}

resource "aws_ssm_parameter" "parameters" {
  count = length(var.parameters)
  name  = "foo"
  type  = "String"
  value = "bar"
}

variable "parameters" {}
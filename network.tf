resource "aws_vpc" "ntier" {
  cidr_block = var.cidr-block
  
  tags = {
    "Name" = "ntier-${terraform.workspace}"
     Env  = terraform.workspace
  }

}

resource "aws_subnet" "basion" {
  count = terraform.workspace == "qa" ? 1 :0
  vpc_id = aws_vpc.ntier
  cidr_block = "10.10.255.0"
  
}
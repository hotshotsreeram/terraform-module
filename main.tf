provider "aws" {
  region     = var.aws_region
}

module "practice-module" {
  source = ".//module-1"
  aws_zone= "us-east-1a"
  ami= "ami-052efd3df9dad4825"
  type= "t2.micro"
  vm_tags= "module-1"
  vpc_tags= "module_vpc"
  public_subnet_tags= "module public subnet"
  private_subnet_tags= "module private subnet"
  internet_gateway_tags= "module internet gateway"
  route_table_tags= "module route table"
  key= "My_practice"
  public_subnet= "10.0.1.0/24"
  private_subnet= "10.0.2.0/24"
  route_table= "0.0.0.0/0"
  custom_vpc= "10.0.0.0/16"
}
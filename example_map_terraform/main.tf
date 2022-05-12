resource "aws_instance" "test" {
  for_each      = var.exercise
  ami           = each.value.ami
  instance_type = "t2.micro"
  subnet_id     = "subnet-0b8f3f55c6abb81ff"

  tags = {
      name = each.key  
      terraform = each.value.tbool 
  }
}
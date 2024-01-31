resource "aws_instance" "public-instance" {
  ami = "ami-0a3c3a20c09d6f377"
  instance_type = "t2.micro"
  key_name = "Terraform-key-pair"
  subnet_id = aws_subnet.publicsubnet.id
  vpc_security_group_ids = [ aws_security_group.public-sg.id ]

  tags = {
    Name = var.instancename
  }
}






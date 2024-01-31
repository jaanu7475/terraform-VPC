resource "aws_instance" "public-instance" {
  ami = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"
  key_name = "Terraform-key-pair"
  vpc_security_group_ids = [aws_security_group.public-sg.name]
  subnet_id = aws_subnet.publicsubnet.id
}

resource "aws_instance" "private-instance" {
  ami = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"
  key_name = "Terraform-key-pair"
  vpc_security_group_ids = [aws_security_group.private-sg.name]
  subnet_id = aws_subnet.privatesubnet.id
}



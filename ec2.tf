resource "aws_instance" "public-instance" {
  ami = "ami-0a3c3a20c09d6f377"
  instance_type = "t2.micro"
  key_name = "Terraform-key-pair"
  vpc_security_group_ids = [aws_security_group.public-sg.name]
}

resource "aws_instance" "private-instance" {
  ami = "ami-0a3c3a20c09d6f377"
  instance_type = "t2.micro"
  key_name = "Terraform-key-pair"
  vpc_security_group_ids = [aws_security_group.private-sg.name]
}



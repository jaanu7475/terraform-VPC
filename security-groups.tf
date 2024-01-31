resource "aws_security_group" "public-sg" {
  name = "Public-SG"
  vpc_id = aws_vpc.main.id

  ingress {
    description = "Allow all traffic for public access"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "private-sg" {
  name = "Private-SG"
  vpc_id = aws_vpc.main.id

   ingress {
    description = "Allow all traffic for private access"
    from_port = 0
    to_port = 0 
    protocol = "-1"
    cidr_blocks = ["10.0.0.0/24"]
  }
}
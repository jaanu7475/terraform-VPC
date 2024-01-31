resource "aws_route_table" "publicrt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "Public_RT"
  }
}

resource "aws_route_table" "privatert" {
  vpc_id = aws_vpc.main.id
 
  tags = {
    Name = "Private_RT"
  }
}
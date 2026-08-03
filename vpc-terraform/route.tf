# Internet Gateway

resource "aws_internet_gateway" "igw" {

  vpc_id = aws_vpc.hospital_vpc.id

  tags = {
    Name = "Hospital-IGW"
  }
}

# Public Route Table

resource "aws_route_table" "public_rt" {

  vpc_id = aws_vpc.hospital_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "Public-RT"
  }
}

# Associate Public Route Table

resource "aws_route_table_association" "public_assoc" {

  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_rt.id
}

# Private Route Table

resource "aws_route_table" "private_rt" {

  vpc_id = aws_vpc.hospital_vpc.id

  tags = {
    Name = "Private-RT"
  }
}

# Associate Private Route Table

resource "aws_route_table_association" "private_assoc" {

  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = aws_route_table.private_rt.id
}

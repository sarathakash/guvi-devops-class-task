provider "aws" {
  alias  = "ap_south_1"
  region = "ap-south-1"
}

provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}
# Launch EC2 instance in the first region
resource "aws_instance" "instance-us-east-121" {
  provider      = aws.ap_south_1
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  tags          = {
    Name        = "instance-us-east-121"
  }
}


# Launch EC2 instance in the first region
resource "aws_instance" "aws2" {
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  tags          = {
    Name        = "aws2"
  }
}

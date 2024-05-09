provider "aws"{
alias = "ap_south_1"
region= "ap-south-1"
}
provider "aws"{
alias  = "us_east_1"
region = "us-east-1"
}

resource "aws_instance" "aws1"{
provider      = aws.ap_south_1
ami           = "ami-04b70fa74e45c3917"
instance_type = "t2.micro"
tags = {
Name = "Nginx1"
}
user_data = <<-EOF
          #!/bin/bash
          sudo apt-get update
          sudo apt-get install nginx -y
          sudo service nginx start
          echo "hello this is the nginx server " >> /usr/share/nginx/html/index.html
          sudo service nginx restart
          EOF
          
}

resource "aws_instance" "aws2" {
provider      = aws.us_east_1
ami           = "ami-04b70fa74e45c3917"
instance_type = "t2.micro"
tags = {
Name = "nginx2"
}
user_data = <<-EOF
          #!/bin/bash
          sudo apt-get update
          sudo apt-get install nginx -y
          sudo service nginx start
          echo "hello this is the nginx server " >> /usr/share/nginx/html/index.html
          sudo service nginx restart
          EOF
          
          
}

provider "aws" {
  region = "eu-north-1" # Укажите ваш регион
  access_key = "AKIAVRUVPGRFQBL3EM54" 
  secret_key = "NMfg4xo+ZXnAS8tgMMgpUKH6sa8rCoYCTu8/IWZI" 
}

# Создание Security Group
resource "aws_security_group" "example" {
  name        = "example"
  description = "Allow inbound traffic on port 22 and 80"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "example"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0d71933ff2fa5c9c1"
  instance_type = "t3.micro"
  security_groups = [sg-03ea5badb675db91f]
}

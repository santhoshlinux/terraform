resource "aws_instance" "myawsserver" {
  ami = "ami-0603cbe34fd08cb81"
  instance_type = "t3.micro"

  tags = {
    Name = "Gagandeep-aws-ec2-instance-accenture"
    Env = "test"
  }
}

output "myawsserver-ip" {
  value = aws_instance.myawsserver.public_ip
}

output "myserver-PrivateIP" {
  value = aws_instance.myawsserver.private_ip
}




provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "pyspark" {
  ami           = "ami-0e4fd655fb4e26c30" # Specify your desired AMI ID
  instance_type = "t2.micro"
  user_data     = file("remote.sh")
  key_name      = "pyspark" # Specify your SSH key pair

  tags = {
    Name = "pyspark-instance2"
  }
}

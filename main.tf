resource "aws_instance" "test_ec2" {
    
    
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t3.micro"

  root_block_device {
    volume_size = 8
    volume_type = "gp3"
  }

  tags = {
    Name = "Jenkins-Terraform-Ec2"
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "terra-key-ec2"
  public_key = file("terra-key.pub")
}

resource "aws_instance" "test_ec2" {
    
  key_name = aws_key_pair.deployer.key_name
    
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

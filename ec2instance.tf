# EC2 Instance
resource "aws_instance" "zero2provm" {
  ami = data.aws_ami.amzlinux2.id 
  instance_type = var.instance_type
  user_data = file("${path.module}/user-data.sh")
  key_name = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.ssh-sg.id, aws_security_group.web-sg.id]  
  tags = {
    "Name" = "Zero2Pro-EC2-VM"
  }
}
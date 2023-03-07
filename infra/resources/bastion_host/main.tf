data "aws_security_group" "selected" {
  name = var.security_group_name
}
resource "aws_instance" "main" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [data.aws_security_group.selected.id]
  associate_public_ip_address = var.associate_public_ip_address
  root_block_device {
    volume_size           = var.disk_size
    delete_on_termination = var.delete_on_termination
  }
  tags = var.tags
}                   
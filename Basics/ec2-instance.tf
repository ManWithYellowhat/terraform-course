resource "aws_instance" "ec2demo" {
    ami = data.aws_ami.amzlinux2.id
    instance_type = var.instance_type
    key_name = "terraform-key"
    user_data = file("apache-install.sh")
    vpc_security_group_ids = [aws_security_group]
    tags = {
        "Name" = "amz-linux-vm"
    }
}
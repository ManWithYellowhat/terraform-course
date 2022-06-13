resource "aws_instance" "ec2demo" {
    ami = "ami-0022f774911c1d690"
    instance_type = "t2.micro"

    key_name = "terraform_key"
    user_data = file("apache-install.sh")
    vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
    tags = {
        "Name" = "amz-linux-vm"
    }
}
resource "aws_instance" "web-server" {
  instance_type = "t2.micro"
  ami           = "ami-05238ab1443fdf48f"

  user_data = filebase64("scripts/userdata.sh")

  vpc_security_group_ids = [aws_security_group.allow_http.id]
  tags = {
    Name = "web-server"
  }
}


output "web_server_public_ip" {
  value = aws_instance.web-server.public_ip
}


/*data "aws_ami" "this"{
     owners = "amazon"
     most_recent = true
     filter {
        name = "architecture"
        values = ["x86_64"]
     }

     filter {
        name = "name"
        values = ["x86_64"]
     }

}*/
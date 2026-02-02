resource "aws_instance" "web" {
  ami           = "ami-0abcd1234abcd5678"
  instance_type = "t2.micro"
  
  provisioner "file" {
  source      = "app.conf"
  destination = "/etc/nginx/conf.d/app.conf"

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("~/.ssh/id_rsa")
    host        = self.public_ip
  }
  }
}
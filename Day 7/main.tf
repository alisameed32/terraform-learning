module "web_server" {
  source         = "./modules/ec2-instance"
  ami_id         = "ami-0c55b159cbfafe1f0"
  instance_type  = "t2.micro"
  instance_name  = "MyWebServer"
}

output "web_server_id" {
  value = module.web_server.instance_id
}
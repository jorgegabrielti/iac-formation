module "aws_dev" {
  source        = "../../infra"
  instance_type = "t2.micro"
  ami           = "ami-052efd3df9dad4825"
  region        = "us-east-1"
  ssh_key       = "development.pem"
}

output "ip" {
  value = module.aws_dev.public_ip
}
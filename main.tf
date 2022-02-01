provider "aws" {
        region     = "us-east-1"
        access_key = var.access_key
        secret_key = var.secret_key
}
resource "aws_instance" "webserver" {
        ami             =  "ami-04505e74c0741db8d"
        instance_type   = "t2.micro"
        key_name        = "webserver"
        
    
        tags = {   
            Name = var.instance_name  
        }
    }

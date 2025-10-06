# configurar proveedor
provider "aws" {
        region = "us-east-1"
}
# crear instancia ec2
resource "aws_instance" "hello_world" {
    instance_type = "t2.micro"              # Tipo de instancia gratuita
    ami           = "ami-052064a798f08f0d3" # Amazon Linux 2 AMI

    tags = {
            Name = "Teraform-primer-vistazo"
    }
}
# Bloque de proveedor
# DEDE
#
# Se configura AWS como proveedor usando un Access Key ID y su respectivo
# Secret Key provisto en clase. Ademas, se especifica la region donde se
# debe crear los recursos
# La lista de regiones disponibles por cada servicio de AWS esta en
# https://docs.aws.amazon.com/es_es/general/latest/gr/rande.html
provider "aws" {
  access_key = "AKIAJ2DCEFQKF7VRXZYQ"
  secret_key = "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"
  region = "us-east-1"
}

# Bloque de instancia EC2 (maquina virtual) usando el recurso de tipo
# "aws_instance" y nombre interno "vm-prueba01" (valido solo para Terraform,
# mas no para AWS)
#
# Se crea una instancia chica con Amazon Linux como sistema operativo
# Amazon Linux
resource "aws_instance" "vm-prueba01" {
  # AMI de Amazon Linux 2 AMI (HVM), SSD Volume Type en N. Virginia
  ami = "ami-035be7bafff33b6b6"

  # Tamanio de instancia
  # Ver tamanios disponibles en https://aws.amazon.com/es/ec2/instance-types/
  instance_type = "t2.nano"
  tags {
    Name = "vm-Humberto"
  } 
}
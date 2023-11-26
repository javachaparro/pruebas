provider "aws" {
      region     = "${var.region}"
  
  
      
}

resource "aws_vpc" "vpc_dev" {
    # Le ponemos el bloque IP que queremos que tenga el VPC
    cidr_block  = var.dev_cidr

    # Le damos acceso a un DNS interno privado para que se puedan resorver entre ellos
    enable_dns_hostnames = true
    enable_dns_support = true

    # Podemos ponerlo un tags
    tags = {
        Name = "DEV"
    }
  
}



resource "aws_vpc" "vpc_qa" {
    # Le ponemos el bloque IP que queremos que tenga el VPC
    cidr_block  = var.qa_cidr

    # Le damos acceso a un DNS interno privado para que se puedan resorver entre ellos
    enable_dns_hostnames = true
    enable_dns_support = true

    # Podemos ponerlo un tags
    tags = {
        Name = "QA"
    }
  
}


resource "aws_vpc" "vpc_prod" {
    # Le ponemos el bloque IP que queremos que tenga el VPC
    cidr_block  = var.prod_cidr

    # Le damos acceso a un DNS interno privado para que se puedan resorver entre ellos
    enable_dns_hostnames = true
    enable_dns_support = true

    # Podemos ponerlo un tags
    tags = {
        Name = "PROD"
    }
  
}

resource "aws_subnet" "dev_subnet" {
  vpc_id     = aws_vpc.vpc_dev.id
  cidr_block = var.dev_cidr

  tags = {
    Name = "dev_subnet"
  }

}




resource "aws_subnet" "qa_subnet" {
  vpc_id     = aws_vpc.vpc_qa.id
  cidr_block = var.qa_cidr

  tags = {
    Name = "qa_subnet"
  }

}



resource "aws_subnet" "prod_subnet" {
  vpc_id     = aws_vpc.vpc_prod.id
  cidr_block = var.prod_cidr

  tags = {
    Name = "prod_subnet"
  }

}
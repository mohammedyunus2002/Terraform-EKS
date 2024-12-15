resource "aws_subnet" "private_zone1" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.0.0/19"
  availability_zone = local.zones[0]

  tags = {
    "Name" = "${local.env}-private-${local.zones[0]}"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/${local.env}-${local.eks_name}" = "owned"
  }
}

resource "aws_subnet" "private_zone2" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.32.0/19"
  availability_zone = local.zones[1]

  tags = {
    "Name" = "${local.env}-private-${local.zones[0]}"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/${local.env}-${local.eks_name}" = "owned"
  }
}

resource "aws_subnet" "public_zone1" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.64.0/19"
  availability_zone = local.zones[0]
  map_public_ip_on_launch = true

  tags = {
    "Name" = "${local.env}-private-${local.zones[0]}"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/${local.env}-${local.eks_name}" = "owned"
  }
}

resource "aws_subnet" "public_zone2" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.96.0/19"
  availability_zone = local.zones[1]
  map_public_ip_on_launch = true

  tags = {
    "Name" = "${local.env}-private-${local.zones[0]}"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/${local.env}-${local.eks_name}" = "owned"
  }
}
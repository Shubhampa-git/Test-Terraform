resource "aws_nat_gateway" "this" {
  count = length(var.public_subnet_ids)

  allocation_id = aws_eip.this[count.index].id
  subnet_id     = var.public_subnet_ids[count.index]
  tags = {
    Name = "${var.name}-nat-${count.index + 1}"
  }
}

resource "aws_eip" "this" {
  count = length(var.public_subnet_ids)

  vpc = true
  tags = {
    Name = "${var.name}-eip-${count.index + 1}"
  }
}

output "nat_gateway_ids" {
  value = aws_nat_gateway.this[*].id
}

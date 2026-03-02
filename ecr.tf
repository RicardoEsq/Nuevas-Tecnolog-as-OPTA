# ECR Repository
resource "aws_ecr_repository" "repo" {
  name                 = "${var.prefix}-repo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "${var.prefix}-ecr"
  }
}

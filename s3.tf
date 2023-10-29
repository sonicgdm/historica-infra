module "data" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 3.15.0"

  bucket                  = "${local.environment}.data"
  acl                     = "private"
  control_object_ownership = true
  object_ownership         = "ObjectWriter"
  #block_public_acls       = true
  #block_public_policy     = true
  #ignore_public_acls      = true
  #restrict_public_buckets = true

  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = var.tags
}

module "sharing" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 3.15.0"

  bucket                  = "${local.environment}.sharing"
  acl                     = "private"
  control_object_ownership = true
  object_ownership         = "ObjectWriter"
  #block_public_acls       = true
  #block_public_policy     = true
  #ignore_public_acls      = true
  #restrict_public_buckets = true

  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = var.tags
}

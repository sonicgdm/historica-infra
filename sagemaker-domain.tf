resource "aws_sagemaker_domain" "this" {
  domain_name = local.environment
  auth_mode   = "IAM"
  vpc_id      = module.vpc.vpc_id
  subnet_ids  = module.vpc.private_subnets


  default_space_settings {
    execution_role = aws_iam_role.sagemaker_domain.arn
  }

  default_user_settings {
    execution_role = aws_iam_role.sagemaker_domain.arn

    canvas_app_settings {
      time_series_forecasting_settings {
        amazon_forecast_role_arn = aws_iam_role.sagemaker_forecast.arn
        status                   = "ENABLED"
      }
    }

    jupyter_server_app_settings {
      lifecycle_config_arns = []

      #default_resource_spec {
      #  instance_type       = "system"
      #  sagemaker_image_arn = "arn:aws:sagemaker:us-east-2:429704687514:image/jupyter-server-3"
      #}
    }

    sharing_settings {
      notebook_output_option = "Allowed"
      s3_output_path         = "s3://${module.sharing.s3_bucket_id}/sharing"
    }
  }
}

resource "aws_sagemaker_user_profile" "this" {
  domain_id         = aws_sagemaker_domain.this.id
  user_profile_name = local.environment

  user_settings {
    execution_role  = aws_iam_role.sagemaker_domain.arn
    security_groups = []

    canvas_app_settings {
      time_series_forecasting_settings {
        amazon_forecast_role_arn = aws_iam_role.sagemaker_forecast.arn
        status                   = "ENABLED"
      }
    }

    jupyter_server_app_settings {
      lifecycle_config_arns = []

      #default_resource_spec {
      #  instance_type       = "system"
      #  sagemaker_image_arn = "arn:aws:sagemaker:us-east-2:429704687514:image/jupyter-server-3"
      #}
    }
  }

  tags = var.tags
}

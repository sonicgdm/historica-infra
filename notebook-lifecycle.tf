# Defining the SageMaker notebook lifecycle configuration
resource "aws_sagemaker_notebook_instance_lifecycle_configuration" "notebook_config" {
  name = "sm-lifecycle-config"
  on_create = filebase64("./on-create.sh")
  on_start = filebase64("./on-start.sh")
}

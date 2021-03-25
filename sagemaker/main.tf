
resource "aws_sagemaker_code_repository" "blue_repo" {
  code_repository_name = "sagemaker-deployment"

  git_config {
    repository_url = "https://github.com/udacity/sagemaker-deployment.git"
  }
}
resource "aws_sagemaker_notebook_instance" "blue_sage" {
  name                    = "blue-sages-staff"
  role_arn                = "arn:aws:iam::024632532877:role/service-role/AmazonSageMaker-ExecutionRole-20210318T223618"
  instance_type           = "ml.m4.xlarge"
  default_code_repository = aws_sagemaker_code_repository.blue_repo.code_repository_name

  tags = {
    Name = "blue-sages-staff"
  }
}


# ./lambda/terragrunt.hcl
include {
  path = find_in_parent_folders()
}

terraform {
  source = "../modules/lambda"
}

inputs = {
  github_repo_url      = "https://github.com/gargworld/25-tg-lambda-codebuild.git"
  github_branch        = "main"

  codebuild_project_name = "terraform-apply"
  lambda_function_name   = "asg_termination_rule"
}


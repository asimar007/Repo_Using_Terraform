resource "github_repository" "example" {
  name        = "Repo_Using_Terraform"
  description = "The repository is created by Terraform"

  visibility = "public"
}
resource "github_repository_file" "readme" {
  repository = github_repository.example.name
  file       = "README.md"
  content    = <<-EOT
    # My Terraform-created Repository

    This repository was created using Terraform.

    ## Introduction

    Welcome to my repository!

    ## Getting Started

    To get started, follow these steps...
  EOT
}

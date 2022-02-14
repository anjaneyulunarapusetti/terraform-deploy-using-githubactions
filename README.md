# Terraform Deployment Using Github Actions

This document will provide you all the details how to configure the github actions to trigger the terraform deployment. 

## Github Actions Workflow 

To have basic understanding of Github actions, please follow [Github Action Basic Video](https://www.youtube.com/watch?v=0VELgZOJs78)


## Basics of Github actions in the workflow

  1. Use a build matrix if you want your workflow to run tests across multiple combinations of operating systems, platforms, and languages. 
  3. Use of matrix to run the workflow for different environments or even you can set different variables as per the environment if needed
  4. Connect to AWS account using Github secrets
  6. Use of `workflow-dispatch` to trigger the workflow manually
  7. Use of `max-parallel` to run the job for both the environments in parallel
  8. Set working directory to any of your subfolder
  9. Use of Environments in the workflow to approve the changes for higher environments if needed.

## Create AWS resources using Terraform

In this workflow, we will create an AWS resource using Terraform and will be using S3 as remote state backend
 1. S3 bucket needs to be present before you trigger this workflow
 2. Update the backend configurtaion as per your bucket name
 3. Using the `terraform.tfvars`  for the variables as per the environment
 4. This workflow will create an ECS cluster for test and prod environment
 5. It will create a PR comment for any Pull request


## Deploy only when push to main branch (deploy.yaml)

We will be applying the changes only when there is a push in the main branch.


## References
1. https://docs.github.com/en/actions/learn-github-actions/managing-complex-workflows
2. https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions


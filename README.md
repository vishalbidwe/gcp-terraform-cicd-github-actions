## Automating Terraform with GitHub Actions for Continuous Integration on Google Cloud Platform

This repository showcases the deployment of a WordPress server on Google Cloud Platform and demonstrates the utilization of GitHub Actions to create a flexible, native continuous integration pipeline for Terraform. GitHub Actions eliminates the need for external tooling by enabling syntax validation, resource testing, and quality maintenance of Terraform modules during configuration changes.
The document provides a step-by-step guide to automate Terraform with GitHub Actions on GCP, assuming familiarity with Terraform, Git, and GCP. Prerequisites include installing Terraform, setting up GitHub and GCP accounts, and creating a service account with the necessary roles.

The workflow involves checking configuration formatting, generating a plan for pull requests, and applying the configuration when updating the master branch. The sample code is available on GitHub.

To set up the workflow, a workflow file is created in the GitHub repository. The workflow checks out the code, sets up Terraform CLI, initializes, formats, plans, and applies the configuration. Google credentials are stored in GitHub Secrets as a JSON string.

A feature branch demonstrates the workflow, and the pull request triggers a check that runs the workflow without the apply step. Merging the pull request into the master branch executes the workflow with the apply step.

The document concludes by highlighting the flexibility and native continuous integration capabilities of GitHub Actions for Terraform on GCP, enabling efficient validation, testing, and quality maintenance during configuration changes.This repository showcases the deployment of a WordPress server on Google Cloud Platform.

## Techstack

<p align="left">   <a href="https://www.gnu.org/software/bash/" target="_blank"> <img src="https://bashlogo.com/img/logo/svg/monochrome_dark.svg" alt="selenium" width="70" height="40"/> </a> <a href="https://www.typescriptlang.org/" target="_blank"> <img src="https://upload.wikimedia.org/wikipedia/commons/0/04/Terraform_Logo.svg" alt="typescript" width="70" height="40"/> </a> <img src="https://www.gstatic.com/devrel-devsite/prod/v0e0f589edd85502a40d78d7d0825db8ea5ef3b99ab4070381ee86977c9168730/cloud/images/cloud-logo.svg" alt="gcloud" width="70" height="40"/> </a> </p>


# terraform_gha_demo
demo of building GHA pipeline of terraform which split state by catetory and support multi-environment by branching


# Highlights

*  Pipeline triggered by new commit on given branches, no extra step from user needed.
*  Demo simulate the same project structure: resources categorized into each folder: `vpc` and `ec2` in example
*  Only execute terraform pipeline if code changes for given folder
*  Terraform plan ONLY for any feature branch: i.e branches other than `nonprod` and `prod`
*  Terraform binary plan uploaded as artifact


# Thoughts

*  Optionally support advance scenarios want to try plan and apply own changes in nonprod using local terraform state
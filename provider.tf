// I got trouble with Azure provider :(
// I was not able to solve the issue with registering Azure provider, so I decided to use AWS provider

provider "aws" {
  region = var.region
}

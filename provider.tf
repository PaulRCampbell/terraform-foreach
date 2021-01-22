provider "aws" {
  region  = var.region
  profile = "DeveloperAccess"

  // just testing logic don't no need to actually connect
  #   skip_credentials_validation = true
  #   skip_metadata_api_check     = true
  #   skip_requesting_account_id  = true
}

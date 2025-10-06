terraform {
    backend "s3" {
        bucket = "tf-backend"                  # Name of the S3 bucket
        endpoints = {
            s3 = "http://localhost:9000"   # Minio endpoint
        }
        key = "terraform/state.tfstate"        # Name of the tfstate file

        access_key="rustfsadmin"           # Access and secret keys
        secret_key="rustfsadmin"

        region = "cn-east-1"                     # Region validation will be skipped
        skip_credentials_validation = true  # Skip AWS related checks and validations
        skip_requesting_account_id = true
        skip_metadata_api_check = true
        skip_region_validation = true
        use_path_style = true             
    }
}


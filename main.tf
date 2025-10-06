terraform {
  required_providers {
    minio = {
      source = "aminueza/minio"
      version = "3.6.5"
    }
  }
}

provider "minio" {
  minio_server   = var.rustfs_endpoint
  minio_user     = var.rustfs_access_key
  minio_password = var.rustfs_secret_key
  minio_region   = var.rustfs_region
}

resource "minio_s3_bucket" "rustfs_bucket_creation" {
  bucket = var.bucket_name
  acl    = "public"
}

resource "minio_s3_object" "txt_file" {
  depends_on = [minio_s3_bucket.rustfs_bucket_creation]
  bucket_name = minio_s3_bucket.rustfs_bucket_creation.bucket
  object_name = "text.txt"
  content = "Hello World!"
  content_type = "text/plain"
}

output "minio_id" {
  value = "${minio_s3_bucket.rustfs_bucket_creation.id}"
}

output "minio_url" {
  value = "${minio_s3_bucket.rustfs_bucket_creation.bucket_domain_name}"
}


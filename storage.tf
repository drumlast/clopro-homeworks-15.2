resource "yandex_storage_bucket" "image_bucket" {
  bucket = var.bucket_name
  acl    = "public-read"
}

resource "yandex_storage_object" "image" {
  bucket = yandex_storage_bucket.image_bucket.bucket
  key    = var.image_file_name
  source = var.image_file_path
  acl    = "public-read"
}
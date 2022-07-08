terraform {
  backend "gcs" {
    # unique name to identify the file within the bucket
    prefix  = "my-tf-prefix"
  }
}

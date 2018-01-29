provider "aws" {
  access_key  = "${var.access_key}"
  secret_key  = "${var.secret_key}"
  region      = "${var.region}"
}

resource "aws_s3_bucket" "vmtpublic" {
    bucket    = "VidmindTest_public_bucket"
    acl       = "public-read"
    
    tags {
       Name         = "Vidmind Test Public Bucket"
       Environment  = "Production"
    }
}

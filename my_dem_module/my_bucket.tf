resource "aws_s3_bucket" "my_dem_bucket" {
      bucket = "${var.env}-batch-5-bucket"

}


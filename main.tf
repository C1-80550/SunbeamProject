
resource "aws_s3_object" "index"{
	bucket = aws_s3_bucket.mybucket.id
	key = "index.html"
	source = "index.html"
	acl = "private"
	content_type = "text/html"

}

resource "aws_s3_object" "error" {
	bucket =aws_s3_bucket.mybucket.id
	key = "error.html"
	source = "error.html"
	acl = "private"
	content_type = "text/html"
}


resource "aws_s3_object" "style" {
	bucket =aws_s3_bucket.mybucket.id
	key = "style.css"
	source = "style.css"
	acl = "private"
	content_type = "text/css"
}


resource "aws_s3_object" "script" {
	bucket =aws_s3_bucket.mybucket.id
	key = "script.js"
	source = "script.js"
	acl = "private"
	content_type = "text/javascript"
}


resource "aws_s3_bucket_website_configuration" "website" {
	bucket = aws_s3_bucket.mybucket.id
	index_document {
		suffix = "index.html"
		}
	
	error_document {
		key = "error.html"
		}

	depends_on = [ aws_s3_bucket_acl.example ]

}

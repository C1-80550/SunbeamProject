
resource "aws_s3_object" "index"{
	bucket = "mysunbeamterraformproject3"
	key = "index.html"
	source = "index.html"
	acl = "private"
	content_type = "text/html"

}

resource "aws_s3_object" "error" {
	bucket = "mysunbeamterraformproject3"
	key = "error.html"
	source = "error.html"
	acl = "private"
	content_type = "text/html"
}


resource "aws_s3_object" "style" {
	bucket = "mysunbeamterraformproject3"
	key = "style.css"
	source = "style.css"
	acl = "private"
	content_type = "text/css"
}


resource "aws_s3_object" "script" {
	bucket = "mysunbeamterraformproject3"
	key = "script.js"
	source = "script.js"
	acl = "private"
	content_type = "text/javascript"
}


resource "aws_s3_bucket_website_configuration" "website" {
	bucket = "mysunbeamterraformproject3"
	index_document {
		suffix = "index.html"
		}
	
	error_document {
		key = "error.html"
		}
}

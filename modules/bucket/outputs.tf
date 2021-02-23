output "arn" {
    value = aws_s3_bucket.this[0].arn
}

output "id" {
    value = aws_s3_bucket.this[0].id
}
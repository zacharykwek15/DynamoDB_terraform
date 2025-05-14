resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "zh-assignment"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "lockId"

  attribute {
    name = "lockId"
    type = "S"
  }

  attribute {
    name = "GameTitle"
    type = "S"
  }

  attribute {
    name = "TopScore"
    type = "N"
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = false
  }

  global_secondary_index {
    name               = "zh-assignment"
    hash_key           = "GameTitle"
    range_key          = "TopScore"
    projection_type    = "INCLUDE"
    non_key_attributes = ["UserId"]
  }

  tags = {
    Name        = "dynamodb-table-1"
    Environment = "production"
  }
}
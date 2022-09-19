resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "GameScores"
  hash_key       = "UserId"
  billing_mode   = "PROVISIONED"
  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"
  read_capacity  = 20
  write_capacity = 20
  range_key      = "GameTitle"

  attribute {
    name = "UserId"
    type = "S"	#String
  }
  attribute {
    name = "GameTitle"
    type = "S"	#String
  }
  attribute {
    name = "TopScore"
    type = "N"	#Number
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = false
  }

  global_secondary_index {
    name               = "GameTitleIndex"
    hash_key           = "GameTitle"
    range_key          = "TopScore"
    write_capacity     = 10
    read_capacity      = 10
    projection_type    = "INCLUDE"
    non_key_attributes = ["UserId"]
  }
  
  replica {
    region_name = "us-east-2"
  }

  replica {
    region_name = "us-west-2"
  }

  tags = {
    Name        = "dynamodb-table-1"
    Environment = "production"
  }
}
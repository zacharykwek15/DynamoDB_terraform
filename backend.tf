terraform {
    backend "s3" {
        bucket = "sctp-ce10-tfstate" #Dont change the bucket name (which s3 bucket is going to store this tfstate)
        key = "zh-tf-tfstate"       #specific to your project
        region = "ap-southeast-1"  #dont change the region (in which region this bucket is located?)
    }
}
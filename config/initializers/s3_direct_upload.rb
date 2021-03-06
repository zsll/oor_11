S3DirectUpload.config do |c|
  c.access_key_id     = ENV['AWS_ACCESS_KEY_ID']
  c.secret_access_key = ENV['AWS_SECRET_ACCESS_KEY']
  c.bucket            = "#{ENV['S3_BUCKET_NAME']}-#{Rails.env}"
  c.region            = "s3-us-west-1"
  c.url = "https://#{c.bucket}.s3-us-west-1.amazonaws.com/"  #This is required or it will cause https://github.com/waynehoover/s3_direct_upload/issues/30
end
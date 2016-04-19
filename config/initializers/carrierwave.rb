CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp')
  config.cache_dir = 'carrierwave' 

  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:              'AWS',
    aws_access_key_id:     ENV["AWS_ACCESS_KEY_ID"],
    aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"]
  }

  config.cache_dir = "#{Rails.root}/tmp/uploads"

  config.fog_directory  = ENV["S3_BUCKET_NAME"]
  config.fog_public     = false
end

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     Rails.application.secrets.aws_key,                        # required
    aws_secret_access_key: Rails.application.secrets.aws_secret,                        # required
  }
  config.fog_directory  = Rails.application.secrets.aws_bucket                                   # required
end
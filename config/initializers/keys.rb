S3_KEYS = YAML.load_file("#{::Rails.root}/config/keys/amazon_s3.yml")[::Rails.env]

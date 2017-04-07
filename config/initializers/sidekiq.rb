Sidekiq.configure_server do |config|
  config.redis = { db: 'sensors' }
end

Sidekiq.configure_client do |config|
  config.redis = { db: 'sensors' }
end

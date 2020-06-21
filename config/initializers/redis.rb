$redis = Redis.new(url: ENV['REDISCLOUD_URL'], reconnect_attempts: ENV['RECONNECT_ATTEMPTS'], reconnect_delay: ENV['RECONNECT_DELAY'], reconnect_delay_max: ENV['RECONNECT_DELAY_MAX'])

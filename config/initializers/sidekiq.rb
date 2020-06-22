require 'sidekiq'
require 'sidekiq-cron'

Sidekiq.configure_client do |config|
  config.redis = { size: 1 }
end

def configure_cron
  schedule_file = "config/schedule.yml"
  if File.exists?(schedule_file) && Sidekiq.server?
    sidekiq_cron = YAML.load_file(schedule_file)
    Sidekiq::Cron::Job.load_from_hash sidekiq_cron
  end
end


Sidekiq.configure_server do |config|
  config.average_scheduled_poll_interval = 5
  configure_cron
end

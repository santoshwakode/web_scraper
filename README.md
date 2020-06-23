
Webscraping using ruby and watir with sidekiq cron automation.


# require 'bundler'
# Bundler.require(:default)
# Dir.glob(File.join('./', '*.rb'), &method(:require))
# Dir.glob(File.join('./', '{models}', '*.rb'), &method(:require))
# require_relative '../app/models/scraper'
# require_relative '../app/scraper_scripts/extract_data'

# require 'active_record'
# require 'watir'

# require_relative 'db_connection'
# require_relative 'watir_config'

# require 'sidekiq/api' # for the case of rails console

# Sidekiq::Queue.new("infinity").clear
# Sidekiq::RetrySet.new.clear
# Sidekiq::ScheduledSet.new.clear
# Sidekiq::DeadSet.new.clear

#Sidekiq::Cron::Job.all

#Sidekiq::Client.enqueue_to "default", MyWorker, "param_11" => "1", "param_22" => "2"

#bundle exec sidekiq -d -L log/sidekiq.log -C config/sidekiq.yml -e ${RACK_ENV:-development}

#bundle exec sidekiq -L log/sidekiq.log -C config/sidekiq.yml -e ${RACK_ENV:-development}

#bundle exec sidekiq -e ${RACK_ENV:-development} -r ./config/application.rb -C ./config/sidekiq.yml

#bundle exec sidekiq -e ${RACK_ENV:-development} -r ./config/application.rb -C ./config/sidekiq.yml





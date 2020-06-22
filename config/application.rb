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

Dir.glob(File.join('./app', '**', '*.rb'), &method(:require))

ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../../Gemfile", __FILE__)

require "bundler/setup" if File.exist?(ENV["BUNDLE_GEMFILE"])
Bundler.require

ENV["RACK_ENV"] ||= "development"

module WebScraper
 class Application
   def self.root
     @root ||= File.dirname(File.expand_path('..', __FILE__))
   end

   def self.env
     @env ||= ENV["RAILS_ENV"] || ENV["RACK_ENV"] || ENV["ENV"] || "development"
   end

   def self.logger
     @logger ||= Logger.new(STDOUT)
   end
 end
end

# require 'sidekiq/api' # for the case of rails console

# Sidekiq::Queue.new("infinity").clear
# Sidekiq::RetrySet.new.clear
# Sidekiq::ScheduledSet.new.clear
# Sidekiq::DeadSet.new.clear

require_relative "initializers/sidekiq"


#Sidekiq::Client.enqueue_to "default", MyWorker, "param_11" => "1", "param_22" => "2"

#bundle exec sidekiq -d -L log/sidekiq.log -C config/sidekiq.yml -e ${RACK_ENV:-development}

#bundle exec sidekiq -L log/sidekiq.log -C config/sidekiq.yml -e ${RACK_ENV:-development}

#bundle exec sidekiq -e ${RACK_ENV:-development} -r ./config/application.rb -C ./config/sidekiq.yml

#bundle exec sidekiq -e ${RACK_ENV:-development} -r ./config/application.rb -C ./config/sidekiq.yml





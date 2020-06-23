require 'sidekiq'
require 'rake'
require 'active_record'

load File.expand_path("../../../lib/tasks/store_data.rake", __FILE__)
Rake::Task.define_task(:environment)

class DataStorage
  include Sidekiq::Worker

  def perform(*args)
    puts "Data storing started through sidekiq cron"   
    Rake::Task['store_data:fetch_content'].invoke
    Rake::Task['store_data:fetch_content'].reenable
    puts "Data storing end through sidekiq cron"
  end
end
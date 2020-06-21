
load File.expand_path("../../../lib/tasks/extract_data.rake", __FILE__)
Rake::Task.define_task(:environment)

class DataExtractor
  include Sidekiq::Worker

  def perform(*args)
  	puts "Data extract started through sidekiq cron"   
    Rake::Task['extract_data:get_content'].invoke
    Rake::Task['extract_data:get_content'].reenable
    puts "Data extraction end through sidekiq cron"
  end
end
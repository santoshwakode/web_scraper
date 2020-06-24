
ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../../Gemfile", __FILE__)
require "bundler/setup" if File.exist?(ENV["BUNDLE_GEMFILE"])
Bundler.require

module WebScraper
 class Application
   def self.root
     @root ||= File.dirname(File.expand_path('..', __FILE__))
   end

   def self.env
     @env ||= ENV["ENV"] || "development"
   end

   def self.logger
     @logger ||= Logger.new(STDOUT)
   end
 end
end

require_relative "initializers/sidekiq"

Dir.glob(File.join('./app', '**', '*.rb'), &method(:require))





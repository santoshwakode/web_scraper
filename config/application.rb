# require 'bundler'
# Bundler.require(:default)
# Dir.glob(File.join('./', '*.rb'), &method(:require))
# Dir.glob(File.join('./', '{models}', '*.rb'), &method(:require))
# require_relative '../app/models/scraper'
# require_relative '../app/scraper_scripts/extract_data'

require 'active_record'
require 'watir'

require_relative 'db_connection'
require_relative 'watir'

Dir.glob(File.join('./app', '**', '*.rb'), &method(:require))



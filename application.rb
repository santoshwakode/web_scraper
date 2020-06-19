require 'bundler'



Bundler.require(:default)

Dir.glob(File.join('./', '*.rb'), &method(:require))


Dir.glob(File.join('./', '{models}', '*.rb'), &method(:require))


puts Scraper.all


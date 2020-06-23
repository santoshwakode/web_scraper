require 'watir'

namespace :execute_js do
  desc "Extract data from website"
  task get_version: :environment do
    browser = Watir::Browser.new
	browser.goto('http://jquery.com/')
	version = browser.execute_script('return jQuery.fn.jquery')
	puts "Using jQuery #{version}"
	browser.close
  end
end
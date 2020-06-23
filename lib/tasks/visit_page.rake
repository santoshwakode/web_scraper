require 'watir'

namespace :visit_page do
  desc "Extract data from website"
  task show: :environment do
	browser = Watir::Browser.new
	browser.goto('http://stackoverflow.com/')
	puts browser.title
	browser.close
  end
end
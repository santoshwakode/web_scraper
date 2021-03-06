require 'watir'

namespace :filling_form do
  desc "Extract data from website"
  task enter_data: :environment do
    browser = Watir::Browser.new
	browser.goto('https://www.gov.uk/')
	browser.input(name: 'q').send_keys('passport', :return)
	results = browser.element(id: 'js-results').wait_until(&:present?)
	results.elements(css: 'li a').each do |element|
	  puts element.text.strip
	end
	browser.close
  end
end
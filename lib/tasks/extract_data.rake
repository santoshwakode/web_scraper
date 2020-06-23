require 'watir'

namespace :extract_data do
  desc "Extract data from website"
  task get_content: :environment do
    browser = Watir::Browser.new
	browser.goto('http://weblog.rubyonrails.org/')
	data = browser.element(css: 'article header h2').text.strip
	puts "Extracted the data."
	browser.close
  end
end
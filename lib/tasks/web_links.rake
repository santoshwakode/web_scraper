require 'watir'

namespace :web_links do
  desc "Extract data from website"
  task get_links: :environment do
	browser = Watir::Browser.new
	browser.goto('http://en.wikipedia.org/wiki/Main_Page')
	browser.link(text: 'Random article').click
	browser.wait_until { browser.h1.text != 'Main Page' }
	puts browser.url
	browser.close
  end
end
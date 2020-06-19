
class ExtractData

	def get_data
		browser = Watir::Browser.new
		browser.goto('http://weblog.rubyonrails.org/')

		data = browser.element(css: 'article header h2').text.strip

		scrap = Scraper.new(title: "header", data: data)
	  scrap.save!

	  puts "Data in your database: #{Scraper.count}"

		browser.close
  end

end
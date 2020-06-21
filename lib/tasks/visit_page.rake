

class VisitPage

	def visit

		browser = Watir::Browser.new

		browser.goto('http://stackoverflow.com/')

		puts browser.title

		browser.close

	end

end

class ExecuteJs


	def execute

		browser = Watir::Browser.new

		browser.goto('http://jquery.com/')

		version = browser.execute_script('return jQuery.fn.jquery')

		puts "Using jQuery #{version}"

		browser.close

	end

end
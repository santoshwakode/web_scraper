module DataScraper

	class WatirConnect

		attr_accessor :browser

		def initialize
			@browser ||= Watir::Browser.new
		end

	end

end
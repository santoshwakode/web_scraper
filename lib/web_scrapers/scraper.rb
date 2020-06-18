require 'watir'
require 'pry'

module lib

	class Scraper

		attr_accessor :browser

		browser = Watir::Browser.new

		def initialize
			@browser ||= Watir::Browser.new
		end

	end

end
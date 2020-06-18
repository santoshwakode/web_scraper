require 'watir'
require 'pg'

browser = Watir::Browser.new

browser.goto('http://weblog.rubyonrails.org/')

data = browser.element(css: 'article header h2').text.strip

conn=PG.connect( :hostaddr=>"127.0.0.1", :port=>5432, :dbname=>"web_scraper", :user=>"postgres", :password=>"postgres")
conn.exec_params('INSERT INTO scraped_fields (field_name, field_data) VALUES ($1, $2)', ["header", "#{data}"])

browser.close
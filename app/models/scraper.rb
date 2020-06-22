#
class Scraper < ActiveRecord::Base
  validates :title, :data, presence: true
end
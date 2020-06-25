#
class Scraper < ActiveRecord::Base
  validates :title, :data, presence: true


  def the_truth
    true
  end
end
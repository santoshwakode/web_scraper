require "spec_helper"
require_relative '../../app/models/scraper'

describe Scraper, type: :model do


  it "should be true" do
    expect(Scraper.new.the_truth).to be_truthy
  end
end
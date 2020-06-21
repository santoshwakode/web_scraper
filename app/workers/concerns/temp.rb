require 'active_support/concern'
require 'resolv'

module Temp
  extend ActiveSupport::Concern

  included do
    sidekiq_options backtrace: 5
  end

  def temp
  end
end  
require 'hellion/version'
require 'hellion/message'
require 'hellion/receipt'

module Hellion
  class InvalidReceiptError < ArgumentError; end

  class << self
    def parse(receipt)
      Message.new(receipt).to_receipt
    end
  end
end

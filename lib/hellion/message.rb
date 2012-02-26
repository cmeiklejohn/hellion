require 'mail'

module Hellion
  class Message
    attr_reader :raw, :message

    def initialize(raw)
      @raw = raw

      initialize_message
    end

    def to_receipt 
      Receipt.new
    end

    private

    def initialize_message
      @message = Mail.read_from_string(raw)

      raise_if_not_multipart
    end

    def raise_if_not_multipart
      raise InvalidReceiptError unless @message.multipart?
    end
  end
end

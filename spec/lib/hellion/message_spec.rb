require 'spec_helper'

module Hellion
  describe Message do 
    subject { Message.new(receipt) } 

    context 'given a valid receipt' do 
      include_context 'a valid receipt' 

      it 'returns a new message object' do 
        subject.should be_an_instance_of(Message)
      end

      context 'once initialized' do 
        it 'contains a mail message object' do 
          subject.message.should be_an_instance_of(Mail::Message)
        end
      end
    end
  end
end

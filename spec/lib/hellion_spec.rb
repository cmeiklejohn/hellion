require 'spec_helper'

module Hellion
  describe self do 
    context 'when parsing' do 
      subject { Hellion.parse(receipt) } 

      context 'an invalid receipt' do 
        include_context 'an invalid receipt' 

        it 'raises' do 
          lambda { subject }.should raise_error(InvalidReceiptError)
        end
      end

      context 'a valid receipt' do 
        include_context 'a valid receipt' 

        it 'returns a receipt' do 
          subject.should be_an_instance_of(Receipt)
        end

        context 'the parsed receipt' do 
          before { subject } 

          its(:items) { should == items } 
        end
      end
    end
  end
end

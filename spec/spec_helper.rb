# encoding: UTF-8

PROJECT_ROOT = File.expand_path("../..", __FILE__)
$LOAD_PATH << File.join(PROJECT_ROOT, "lib")

Bundler.require

Dir[File.join(PROJECT_ROOT,"spec/support/**/*.rb")].each {|f| require f}

require 'hellion'

shared_context 'a valid receipt' do
  let(:receipt) { File.read(File.join(PROJECT_ROOT, 'spec/support/receipts/email')) }

  let(:items) do 
    [ { :title => 'The Art of Readable Code' } ]
  end
end

shared_context 'an invalid receipt' do
  let(:receipt) { "invalid." } 
end

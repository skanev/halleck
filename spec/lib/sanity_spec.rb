require 'spec_helper'

describe Halleck do
  it "can be tested with RSpec" do
    Halleck.superclass.should eq(Sinatra::Base)
  end
end

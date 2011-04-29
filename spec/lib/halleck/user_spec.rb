require 'spec_helper'

describe User do
  let(:users) { Database.collection('users') }

  before do
    Test::MongoDB.reset
  end

  it "allows creating of new records" do
    User.create name: 'Paul Atreides', macs: ['00:00:00:00:00:00']

    document = users.find_one 'name' => 'Paul Atreides'
    document['name'].should eq 'Paul Atreides'
    document['macs'].should eq ['00:00:00:00:00:00']
  end

  it "can be looked up by MAC address" do
    users.insert name: 'Halleck', macs: ['00:00:00:00:00:01']

    User.with_mac('00:00:00:00:00:01').name.should == 'Halleck'
  end
end

class Hash
  def stringify_keys!
  end
end

Given 'I have a Twitter account' do
  OmniAuth.config.test_mode = true
  OmniAuth.config.add_mock(:twitter, {
    'uid'       => '1',
    'nickname'  => 'muaddib',
    'user_info' => {
      'name' => 'Paul Atreides'
    }
  })
end

When 'I register with my Twitter' do
  visit '/auth/twitter'
end

Then 'I should have an account in Halleck' do
  Database.collection('users').find_one['name'].should == 'Paul Atreides'
end

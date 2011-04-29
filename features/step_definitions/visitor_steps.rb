Given 'that the following people have registered:' do |table|
  table.hashes.each do |row|
    name, mac = row.values_at 'Name', 'MAC Address'

    User.create name: name, macs: [mac]
  end
end

Given 'that the following computers are currently active:' do |table|
  active_macs = table.raw.map { |row| row[0] }
  Gateway.active_macs = active_macs
end

When 'I open the dashboard' do
  visit '/'
end

Then '"$name" is currently visiting' do |name|
  page.should have_content(name)
end

But '"$name" is not currenly visiting' do |name|
  page.should have_no_content(name)
end


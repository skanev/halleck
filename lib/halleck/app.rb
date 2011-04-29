class App < Sinatra::Base
  get '/' do
    Gateway.active_macs.
      map { |mac| User.with_mac(mac) }.
      compact.
      map { |user| user.name }.
      join("\n")
  end
end

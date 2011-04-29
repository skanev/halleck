class App < Sinatra::Base
  get '/' do
    @users = Gateway.active_macs.map { |mac| User.with_mac(mac) }.compact

    haml :dashboard
  end
end

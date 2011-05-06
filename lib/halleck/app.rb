class App < Sinatra::Base
  use Rack::Session::Cookie
  use OmniAuth::Builder do
    provider :twitter, '', ''
  end

  get '/' do
    @users = Gateway.active_macs.map { |mac| User.with_mac(mac) }.compact

    haml :dashboard
  end

  get '/auth/twitter/callback' do
    auth = request.env['omniauth.auth']

    User.register({
      :twitter_id => auth['uid'],
      :name       => auth['user_info']['name'],
    })
  end
end

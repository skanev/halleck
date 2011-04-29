module Halleck
  class App < Sinatra::Base
    get '/' do
      Halleck::Gateway.active_macs.
        map { |mac| Halleck::User.with_mac(mac).try(:name) }.
        compact.
        join("\n")
    end
  end
end

module Oauth2Provider
  module Routes
    module V2
      class Accounts < Base
        get '/accounts' do
          headers["X-Cascade"] = "pass" if params[:pass] == "true"
          content_type :json
          'version 2'
        end
      end
    end
  end
end
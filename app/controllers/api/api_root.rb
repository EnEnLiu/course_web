class Api::ApiRoot < Grape::API

  format :json

  mount ApiV0::Base
end

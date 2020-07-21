class Api::ApiRoot < Grape::API
  format :json

  mount Api::ApiV0::Base
end

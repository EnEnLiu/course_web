class Api::ApiV0::Base < Grape::API
  version 'v0', using: :path

  mount Ping
  mount Courses
end

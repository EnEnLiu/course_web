class Api::ApiV0::Base < Grape::API
  version 'v0', using: :path
  helpers Api::ApiV0::Helpers

  mount Ping
  mount Courses
  # mount Users
end

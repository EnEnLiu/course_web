module Api::ApiV0::Helpers
  def current_user
    User.find_by(auth_token: params[:auth_token])
  end
end

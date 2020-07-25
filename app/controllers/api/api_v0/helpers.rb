module Api::ApiV0::Helpers
  def current_user
    User.find_by(auth_token: params[:auth_token])
  end

  def authenticate!
    current_user || raise(ActiveRecord::RecordNotFound)
  end
end

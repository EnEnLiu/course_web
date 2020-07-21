class Api::ApiV0::Users < Grape::API
  resource :users do
    desc "Get user's records"
    get '/course_records' do
      records = current_user.course_records.all
      present records, with: Api::ApiV0::Entities::record
    end
  end
end

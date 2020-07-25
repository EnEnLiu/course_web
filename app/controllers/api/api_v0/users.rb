class Api::ApiV0::Users < Grape::API
  resource :users do
    resource :course_records do
      desc "Get user's records"
      get '/' do
        records = current_user.course_records.all
        present records, with: Api::ApiV0::Entities::Record
      end

      desc 'get a course that has been purchased'
      get '/:id' do
        record = current_user.course_records.find(params[:id])
        present record, with: Api::ApiV0::Entities::Record
      end
    end
  end
end

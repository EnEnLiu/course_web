class Api::ApiV0::Courses < Grape::API
  desc 'get all courses'
  get "/courses" do
    courses = Course.all

    present courses, with: Api::ApiV0::Entities::Course
  end

  desc 'return a specific courses'
  get '/courses/:id' do
    course = Course.find(params[:id])
    present course, with: Api::ApiV0::Entities::Course
  end

  desc 'buy a course'
  # before_action :authenticate_user!
  get '/courses/:id/add_record' do
    # course = Course.find(params[:id])
    # present course, with: Api::ApiV0::Entities::Course
    '買起來'
  end
end

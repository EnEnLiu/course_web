class Api::ApiV0::Courses < Grape::API
  resource :courses do
    desc 'Get all courses'
    get '/' do
      courses = Course.all
      present courses, with: Api::ApiV0::Entities::Course
    end

    desc 'Return a specific courses'
    get '/:id' do
      course = Course.find(params[:id])
      present course, with: Api::ApiV0::Entities::Course
    end

    desc 'Buy a course'
    params do
      requires :buy_course, type: Hash do
        requires :user_id, type: Integer, desc: "Buyer's id"
        requires :course_id, type: Integer, desc: "Course's id"
      end
    end
    post'/buy_course' do
      user_record = current_user.course_records
      unless user_record.include?(course)
        CourseRecord.create!(params[:buy_course]) if current_user
      end
    end

    desc 'User can search courses by type form course_record'
    get '/result_type' do
      courses = current_user.Course.result_type
      present courses, with: Api::ApiV0::Entities::Course
    end

    desc "User can search courses that user can buy"
    get '/result_courses' do
      courses = CourseRecord.is_exp
      present courses, with: Api::ApiV0::Entities::Course
    end
  end
end

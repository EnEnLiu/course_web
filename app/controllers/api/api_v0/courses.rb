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
      user_record = current_user.course_records.all
      unless user_record.include?(course)
        CourseRecord.create!(params[:buy_course]) if current_user
      end
    end

    desc 'Search courses by type'
    post '/result_type' do
      courses = Course.where('course_type LIKE ? , "%#{params[:search]}%" ')
      present courses, with: Api::ApiV0::Entities::Course
    end

    desc "Search courses that user don't own"
    get '/result_courses' do
      user_record = []
      courrent_user.course_records.find_each{ |i| user_record.push(i.id) }

      all_courses = []
      Course.find_each{ |x| all_courses.push(x.id) }

      result = user_record - all_courses
      course = Course.where(id: result)

      present courses, with: Api::ApiV0::Entities::Course
    end
  end
end

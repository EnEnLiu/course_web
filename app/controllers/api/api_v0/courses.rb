class Api::ApiV0::Courses < Grape::API
  resource :courses do
    desc 'Get all courses'
    get  do
      courses = Course.all
      present courses, with: Api::ApiV0::Entities::Course
    end

    desc 'Return a specific courses'
    get ':id' do
      course = Course.find(params[:id])
      present course, with: Api::ApiV0::Entities::Course

      resource :buy_course do
        desc 'Buy a course'
        params do
          requires :buy_course, type: Hash do
            requires :user_id, type: integer, desc: "Buyer's id"
            requires :course_id, type: integer, desc: "Course's id"
          end
        end
        post do
          user_record = current_user.course_records.all
          unless user_record.include?(course)
            CourseRecord.create!(params[:buy_course]) if current_user
          end
        end
      end
    end

    desc 'Search courses by type'
    get 'result' do
      courses = Course.where('course_type LIKE ? OR expiry_date > ?', "%#{params[:search]}%", Time.now)
      present courses, with: Api::ApiV0::Entities::Course
    end
  end
end

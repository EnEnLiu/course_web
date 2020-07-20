class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @courses = Course.new
  end

  def create
    @courses = Course.new(course_params)
    @courses.save
    if @courses.save
      redirect_to courses_path, notice: 'Created!'
    else
      render :new
    end
  end

  def edit
    find_course
  end

  private
  def course_params
    params.require(:course).permit(:title,
                                   :context,
                                   :money,
                                   :course_type,
                                   :expiry_date,
                                   :on_market,
                                   :course_amount)
  end

  def find_course
    @course = Course.find(params[:id])
  end
end

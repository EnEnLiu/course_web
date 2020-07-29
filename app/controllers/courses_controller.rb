class CoursesController < ApplicationController
  before_action :find_course, only: [:edit, :show, :update, :destroy]
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
  end

  def show
  end

  def update
    if @courses.update(course_params)
      redirect_to courses_path, notice: '課程新增!'
    else
      render :new
    end
  end

  def destroy
    @courses.destroy
    redirect_to courses_path, notice: '成功刪除課程!'
  end

  private
  def course_params
    params.require(:course).permit(:title,
                                   :context,
                                   :money,
                                   :course_type,
                                   :expiry_date,
                                   :on_market,
                                   :course_amount,
                                   :url)
  end

  def find_course
    @courses = Course.find(params[:id])
  end
end

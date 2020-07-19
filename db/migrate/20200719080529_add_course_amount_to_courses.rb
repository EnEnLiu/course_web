class AddCourseAmountToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :course_amount, :float
  end
end

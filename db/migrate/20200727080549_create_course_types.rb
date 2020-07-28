class CreateCourseTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :course_types do |t|
      t.references :course, foreign_key: true
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end

class CreateCourseRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :course_records do |t|
      t.references :user, foreign_key: true
      t.references :course, foreign_key: true
      t.string :title
      t.string :context
      t.float :course_amount
      t.string :money
      t.string :course_type
      t.time :expiry_date

      t.timestamps
    end
  end
end

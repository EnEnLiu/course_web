class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :money
      t.string :course_type
      t.string :context
      t.time :expiry_date
      t.boolean :on_market
      t.float :course_amount

      t.timestamps
    end
  end
end


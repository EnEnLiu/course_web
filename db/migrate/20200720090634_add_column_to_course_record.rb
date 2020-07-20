class AddColumnToCourseRecord < ActiveRecord::Migration[5.2]
  def change
    add_column :course_records, :title, :string
    add_column :course_records, :context, :string
    add_column :course_records, :course_amount, :float
    add_column :course_records, :money, :string
    add_column :course_records, :course_type, :string
    add_column :course_records, :expiry_date, :time
  end
end

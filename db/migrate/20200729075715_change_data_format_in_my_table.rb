class ChangeDataFormatInMyTable < ActiveRecord::Migration[5.2]
  def change
    change_column :course_records, :expiry_date, :datetime
    change_column :courses, :expiry_date, :datetime
  end
end

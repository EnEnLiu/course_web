class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :courses, :type, :course_type
  end
end

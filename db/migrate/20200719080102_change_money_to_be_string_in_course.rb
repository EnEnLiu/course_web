class ChangeMoneyToBeStringInCourse < ActiveRecord::Migration[5.2]
  def change
    change_column :courses, :money, :string
  end
end

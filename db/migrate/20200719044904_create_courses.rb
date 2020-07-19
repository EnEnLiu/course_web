class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.decimal :money
      t.string :type
      t.string :context
      t.time :expiry_date
      t.boolean :on_market

      t.timestamps
    end
  end
end

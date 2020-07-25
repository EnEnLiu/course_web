class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :auth_token, :string

    User.all.each do |user|
      user.regenerate_auth_token
    end
  end
end

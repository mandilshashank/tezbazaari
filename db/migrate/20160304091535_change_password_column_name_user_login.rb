class ChangePasswordColumnNameUserLogin < ActiveRecord::Migration
  def change
    rename_column :user_logins, :password, :hashed_password
  end
end

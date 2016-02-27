class CreateUserLogins < ActiveRecord::Migration
  def change
    create_table :user_logins do |t|
      t.string :email_id
      t.string :password
      t.string :old_password
      t.boolean :user_verified
      t.date :user_verification_date

      t.timestamps null: false
    end
  end
end

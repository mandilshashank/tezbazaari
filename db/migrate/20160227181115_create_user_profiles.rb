class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :firstname
      t.string :lastname
      t.datetime :user_create_date
      t.datetime :user_last_modified

      t.timestamps null: false
    end
  end
end

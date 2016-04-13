class CreateLocationUserprofiles < ActiveRecord::Migration
  def change
    create_table :location_userprofiles do |t|
      t.belongs_to :user_profile, index:true
      t.belongs_to :location, index:true
      t.timestamps null: false
    end
  end
end

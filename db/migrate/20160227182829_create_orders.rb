class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :user_profile, index: true
      t.belongs_to :location, index: true

      t.datetime :create_date
      t.float :total
      t.string :promo_code
      t.string :ship_vendor

      t.timestamps null: false
    end
  end
end

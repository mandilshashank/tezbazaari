class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :create_date
      t.float :total
      t.string :promo_code
      t.string :ship_vendor

      t.timestamps null: false
    end
  end
end

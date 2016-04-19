class CreateOrderskus < ActiveRecord::Migration
  def change
    create_table :orderskus do |t|
      t.belongs_to :sku, index:true
      t.belongs_to :order, index:true
      t.float :price

      t.timestamps null: false
    end
  end
end

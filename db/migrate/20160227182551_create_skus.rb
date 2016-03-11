class CreateSkus < ActiveRecord::Migration
  def change
    create_table :skus do |t|
      t.belongs_to :sku_categorie, index:true
      t.string :name
      t.string :desc
      t.float :price
      t.string :cuisine
      t.string :vendor_prime
      t.string :vendor_second
      t.string :vendor_third
      t.string :stock_photo_uri
      t.datetime :create_date
      t.datetime :end_date
      t.boolean :out_of_stock

      t.timestamps null: false
    end
  end
end

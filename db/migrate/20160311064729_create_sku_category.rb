class CreateSkuCategory < ActiveRecord::Migration
  def change
    create_table :sku_categories do |t|
      t.string :cat_name
    end
  end
end

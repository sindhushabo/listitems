class CreateShopLists < ActiveRecord::Migration
  def change
    create_table :shop_lists do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end

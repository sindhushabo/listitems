class CreateShopItems < ActiveRecord::Migration
  def change
    create_table :shop_items do |t|
      t.string :name
      t.references :shop_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

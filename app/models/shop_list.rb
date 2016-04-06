class ShopList < ActiveRecord::Base
  has_many :shop_items
end

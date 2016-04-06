class ShopItemsController < ApplicationController
  before_action :set_shop_list
  def create
    @shop_item = @shop_list.shop_items.create(shop_item_params)
    redirect_to @shop_list
  end

  def destroy
    @shop_item = @shop_list.shop_items.find(params[:id])
    if @shop_item.destroy
      flash[:success] = "Item deleted."
    else
      flash[:error] = "Item could not be deleted."
    end
    redirect_to @shop_list
  end
  private
  def set_shop_list
    @shop_list = ShopList.find(params[:shop_list_id])
  end
  def shop_item_params
    params[:shop_item].permit(:name)
  end
end

require 'test_helper'

class ShopListsControllerTest < ActionController::TestCase
  setup do
    @shop_list = shop_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shop_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shop_list" do
    assert_difference('ShopList.count') do
      post :create, shop_list: { description: @shop_list.description, title: @shop_list.title }
    end

    assert_redirected_to shop_list_path(assigns(:shop_list))
  end

  test "should show shop_list" do
    get :show, id: @shop_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shop_list
    assert_response :success
  end

  test "should update shop_list" do
    patch :update, id: @shop_list, shop_list: { description: @shop_list.description, title: @shop_list.title }
    assert_redirected_to shop_list_path(assigns(:shop_list))
  end

  test "should destroy shop_list" do
    assert_difference('ShopList.count', -1) do
      delete :destroy, id: @shop_list
    end

    assert_redirected_to shop_lists_path
  end
end

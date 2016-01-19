require 'test_helper'

class CoatsControllerTest < ActionController::TestCase
  setup do
    @coat = coats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coat" do
    assert_difference('Coat.count') do
      post :create, coat: { date: @coat.date, info: @coat.info, name: @coat.name, price: @coat.price, sell: @coat.sell, stock: @coat.stock }
    end

    assert_redirected_to coat_path(assigns(:coat))
  end

  test "should show coat" do
    get :show, id: @coat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coat
    assert_response :success
  end

  test "should update coat" do
    patch :update, id: @coat, coat: { date: @coat.date, info: @coat.info, name: @coat.name, price: @coat.price, sell: @coat.sell, stock: @coat.stock }
    assert_redirected_to coat_path(assigns(:coat))
  end

  test "should destroy coat" do
    assert_difference('Coat.count', -1) do
      delete :destroy, id: @coat
    end

    assert_redirected_to coats_path
  end
end

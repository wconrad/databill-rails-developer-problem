require 'test_helper'

class BubbleGumsControllerTest < ActionController::TestCase
  setup do
    @bubble_gum = bubble_gums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bubble_gums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bubble_gum" do
    assert_difference('BubbleGum.count') do
      post :create, :bubble_gum => @bubble_gum.attributes
    end

    assert_redirected_to bubble_gum_path(assigns(:bubble_gum))
  end

  test "should show bubble_gum" do
    get :show, :id => @bubble_gum.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bubble_gum.to_param
    assert_response :success
  end

  test "should update bubble_gum" do
    put :update, :id => @bubble_gum.to_param, :bubble_gum => @bubble_gum.attributes
    assert_redirected_to bubble_gum_path(assigns(:bubble_gum))
  end

  test "should destroy bubble_gum" do
    assert_difference('BubbleGum.count', -1) do
      delete :destroy, :id => @bubble_gum.to_param
    end

    assert_redirected_to bubble_gums_path
  end
end

require 'test_helper'

class PracsControllerTest < ActionController::TestCase
  setup do
    @prac = pracs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pracs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prac" do
    assert_difference('Prac.count') do
      post :create, :prac => @prac.attributes
    end

    assert_redirected_to prac_path(assigns(:prac))
  end

  test "should show prac" do
    get :show, :id => @prac.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @prac.to_param
    assert_response :success
  end

  test "should update prac" do
    put :update, :id => @prac.to_param, :prac => @prac.attributes
    assert_redirected_to prac_path(assigns(:prac))
  end

  test "should destroy prac" do
    assert_difference('Prac.count', -1) do
      delete :destroy, :id => @prac.to_param
    end

    assert_redirected_to pracs_path
  end
end

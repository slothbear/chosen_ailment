require 'test_helper'

class AilmentsControllerTest < ActionController::TestCase
  setup do
    @ailment = ailments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ailments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ailment" do
    assert_difference('Ailment.count') do
      post :create, :ailment => @ailment.attributes
    end

    assert_redirected_to ailment_path(assigns(:ailment))
  end

  test "should show ailment" do
    get :show, :id => @ailment.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ailment.to_param
    assert_response :success
  end

  test "should update ailment" do
    put :update, :id => @ailment.to_param, :ailment => @ailment.attributes
    assert_redirected_to ailment_path(assigns(:ailment))
  end

  test "should destroy ailment" do
    assert_difference('Ailment.count', -1) do
      delete :destroy, :id => @ailment.to_param
    end

    assert_redirected_to ailments_path
  end
end

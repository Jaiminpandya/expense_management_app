require 'test_helper'

class ExpensescountersControllerTest < ActionController::TestCase
  setup do
    @expensescounter = expensescounters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expensescounters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expensescounter" do
    assert_difference('Expensescounter.count') do
      post :create, expensescounter: {  }
    end

    assert_redirected_to expensescounter_path(assigns(:expensescounter))
  end

  test "should show expensescounter" do
    get :show, id: @expensescounter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @expensescounter
    assert_response :success
  end

  test "should update expensescounter" do
    put :update, id: @expensescounter, expensescounter: {  }
    assert_redirected_to expensescounter_path(assigns(:expensescounter))
  end

  test "should destroy expensescounter" do
    assert_difference('Expensescounter.count', -1) do
      session[:expensescounter_id] = @expensescounter.id
      delete :destroy, id: @expensescounter
    end

    assert_redirected_to store_path
  end
end

require 'test_helper'

class QuantitiesControllerTest < ActionController::TestCase
  setup do
    @quantity = quantities(:one)
    @update = {
       title:    'Lorem Ipsum',
       price:     21.29,
       day:      'Monday',
       month:    'January', 
       year:     '2014',
       expense_on: '07/08/2014'
     }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quantities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quantity" do
     assert_difference('Quantity.count') do
      post :create, quantity: @update
    end
  
    assert_redirected_to quantity_path(assigns(:quantity))
  end

  test "should show quantity" do
    get :show, id: @quantity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quantity
    assert_response :success
  end

  test "should update quantity" do
    put :update, id: @quantity, quantity: @update
    assert_redirected_to quantity_path(assigns(:quantity))
  end

  test "should destroy quantity" do
    assert_difference('Quantity.count', -1) do
      delete :destroy, id: @quantity
     end

    assert_redirected_to quantities_path
  end
end


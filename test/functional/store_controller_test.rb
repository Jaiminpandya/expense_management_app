require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#main #column a', minimum:4
    assert_select '#main .entry', 3
    assert_select 'h3', 'Vegetables'
    assert_select '.price', 'Rs. 485.00'
    assert_select 'form input', 0
    assert_select "title", "ExpenseManagement"

  end
end

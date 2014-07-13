require 'test_helper'

class QuantityTest < ActiveSupport::TestCase
 fixtures :quantities

 test "quantity attributes must not be empty" do
  quantity = Quantity.new
  assert quantity.invalid?
  assert quantity.errors[:title].any?
  assert quantity.errors[:price].any?
 end

  test "quantity price must be positive" do 
    quantity = Quantity.new(title:  "My book Title" )
    quantity.price= -1
    assert quantity.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
       quantity.errors[:price]

    quantity.price= 0
    assert quantity.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
       quantity.errors[:price]

     quantity.price= 1
     assert quantity.valid?
   end

   test "quantity is not valid without a unique title" do 
     quantity = Quantity.new( title:    quantities(:expenses).title,
                              price:    1)
     assert quantity.invalid?
     assert_equal ["has already been taken"], quantity.errors[:title]
   end
end
   

class LineItem < ActiveRecord::Base
  belongs_to :quantity
  belongs_to :expensescounter
  attr_accessible :expensescounter_id, :quantity_id 

  def total_price
     quantity.price.to_s.to_d * expense.to_s.to_d
  end 
end

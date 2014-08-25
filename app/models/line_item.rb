class LineItem < ActiveRecord::Base
   attr_accessible :quantity_id, :expensescounter_id

  belongs_to :quantity
  belongs_to :expensescounter
  

  def total_price
     quantity.price.to_s.to_d * expense.to_s.to_d
  end
end

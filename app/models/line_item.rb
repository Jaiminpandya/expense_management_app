class LineItem < ActiveRecord::Base
  belongs_to :quantity
  belongs_to :expensescounter
  attr_accessible :expensescounter_id, :quantity_id  
end
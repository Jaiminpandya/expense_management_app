class Expensescounter < ActiveRecord::Base

  
  has_many :line_items, dependent: :destroy 
  belongs_to :user
 
    
  default_scope order: 'expensescounters.created_at DESC'

 def add_quantity(quantity_id)
    current_item = line_items.find_by_quantity_id(quantity_id)
    if current_item
       current_item.expense += 1
    else
       current_item = line_items.build(quantity_id: quantity_id)
    end
    current_item
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price.to_s.to_d }
  end

  def add_line_items_from_expensescounter(expensescounter)
    expensescounter.line_items.each do |item|
     item.expensescounter_id = nil
     line_items << item
    end
  end
end

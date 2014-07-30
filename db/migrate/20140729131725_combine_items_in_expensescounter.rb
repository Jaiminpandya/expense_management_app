class CombineItemsInExpensescounter < ActiveRecord::Migration
  def up
     # replace multiple items for a single product in a cart with a single item
     Expensescounter.all.each do |expensescounter|
       # count the number of each product in the cart
       sums = expensescounter.line_items.group(:quantity_id).sum(:expense)
       sums.each do |quantity_id, expense|
       if expense > 1
          # remove individual items
          expensescounter.line_items.where(quantity_id: quantity_id).delete_all

          # replace with a single item
          item = expensescounter.line_items.build(quantity_id: quantity_id)
          item.expense = expense
          item.save!
        end
      end
    end
  end

  def down
  end
end

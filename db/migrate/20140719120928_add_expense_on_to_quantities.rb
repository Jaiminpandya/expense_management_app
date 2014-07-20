class AddExpenseOnToQuantities < ActiveRecord::Migration
  def change
    add_column :quantities, :expense_on, :datetime
  end
end

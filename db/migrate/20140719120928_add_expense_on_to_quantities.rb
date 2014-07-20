class AddExpenseOnToQuantities < ActiveRecord::Migration
  def change
    add_column :quantities, :expense_on, :date
  end
end

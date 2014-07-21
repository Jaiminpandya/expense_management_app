class ChangeDateInQuantities < ActiveRecord::Migration
  def change
   change_column :quantities, :expense_on, :string
  end
end

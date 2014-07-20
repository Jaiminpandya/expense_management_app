class ChangeDateFormatInQuantities < ActiveRecord::Migration
 def change
    change_column :quantities, :expense_on, :date
  end
end

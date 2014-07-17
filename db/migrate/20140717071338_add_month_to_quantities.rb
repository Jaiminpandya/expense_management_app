class AddMonthToQuantities < ActiveRecord::Migration
  def change
    add_column :quantities, :month, :string
  end
end

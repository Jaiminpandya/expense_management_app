class AddDayToQuantities < ActiveRecord::Migration
  def change
    add_column :quantities, :day, :string
  end
end

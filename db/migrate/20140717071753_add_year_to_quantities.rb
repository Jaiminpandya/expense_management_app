class AddYearToQuantities < ActiveRecord::Migration
  def change
    add_column :quantities, :year, :integer
  end
end

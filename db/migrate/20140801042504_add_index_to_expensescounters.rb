class AddIndexToExpensescounters < ActiveRecord::Migration
  def change
    add_index :expensescounters, [:user_id, :created_at]
  end
end

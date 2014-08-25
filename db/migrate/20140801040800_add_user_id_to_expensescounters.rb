class AddUserIdToExpensescounters < ActiveRecord::Migration
  def change
    add_column :expensescounters, :user_id, :integer
  end
end

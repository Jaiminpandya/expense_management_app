                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             class CreateExpensescounters < ActiveRecord::Migration
  def change
    create_table :expensescounters do |t|

      t.timestamps
    end
  end
end

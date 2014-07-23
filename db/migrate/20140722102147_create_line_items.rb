class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :quantity_id
      t.integer :expensescounter_id

      t.timestamps
    end
  end
end

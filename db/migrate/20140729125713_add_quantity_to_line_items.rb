class AddQuantityToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :expense, :integer, default: 1
  end
end

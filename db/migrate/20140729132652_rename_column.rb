class RenameColumn < ActiveRecord::Migration
  def change
     rename_column :line_items, :expense, :expense
  end
end

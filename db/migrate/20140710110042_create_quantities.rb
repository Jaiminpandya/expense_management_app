class CreateQuantities < ActiveRecord::Migration
  def change
    create_table :quantities do |t|
      t.string :title
      t.decimal :price, precision: 8, scale: 2 

      t.timestamps
    end
  end
end

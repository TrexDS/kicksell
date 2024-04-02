class CreateShoes < ActiveRecord::Migration[7.1]
  def change
    create_table :shoes do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.string :availability
      t.string :brand

      t.timestamps
    end
  end
end

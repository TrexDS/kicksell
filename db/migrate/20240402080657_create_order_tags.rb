class CreateOrderTags < ActiveRecord::Migration[7.1]
  def change
    create_table :order_tags do |t|
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end

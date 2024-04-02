class AddPriceAndCompletedToOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :price, :integer
    add_column :orders, :completed, :boolean
  end
end

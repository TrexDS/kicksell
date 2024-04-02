class AddToReferencesShoeToOrderTags < ActiveRecord::Migration[7.1]
  def change
    add_reference :order_tags, :shoe, null: false, foreign_key: true
  end
end

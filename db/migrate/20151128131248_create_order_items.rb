class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :item_order_quantity
      t.references :product, index: true, foreign_key: true
      t.references :customer_order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateCustomerOrders < ActiveRecord::Migration
  def change
    create_table :customer_orders do |t|
      t.datetime :order_paced_datetime
      t.datetime :order_delivered_datetime
      t.decimal :order_shipping_charges
      t.text :order_details
      t.string :order_status_code
      t.references :customer, index: true, foreign_key: true
      t.string :shipping_method

      t.timestamps null: false
    end
  end
end

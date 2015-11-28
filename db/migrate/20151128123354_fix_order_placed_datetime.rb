class FixOrderPlacedDatetime < ActiveRecord::Migration
  def change
    rename_column :customer_orders, :order_paced_datetime, :order_placed_datetime
  end
end

class OrderItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :customer_order, dependent: :destroy
  validates :item_order_quantity, numericality: { only_integer: true }, presence: true
  validates :customer_order_id, presence: true
  validates :product_id, presence: true
end

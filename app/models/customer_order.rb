class CustomerOrder < ActiveRecord::Base
  belongs_to :customer
  has_many :order_items
  validates :customer_id, presence: true
  # validates :order_placed_datetime, presence: true
  # validates :order_delivered_datetime, presence: true
  validates :order_status_code,  inclusion: { in: ["pending", "in process", "closed"], allow_nil: false }, presence: true
  validates :order_shipping_charges, presence: true
  validates :shipping_method,  inclusion: { in: ["UPS", "Fedex", "DHL"], allow_nil: false }, presence: true
end

class Customer < ActiveRecord::Base
  has_many :customer_orders, dependent: :destroy
end

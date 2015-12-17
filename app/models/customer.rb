class Customer < ActiveRecord::Base
  has_many :customer_orders, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true, presence: true
  validates :mailshot, default: false
end

class Customer < ActiveRecord::Base
  has_many :customer_orders, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true, presence: true
  # validates :rating, numericality: true, inclusion: { in: [0, 1, 2, 3, 4, 5], allow_nil: false }
end

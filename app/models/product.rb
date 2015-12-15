class Product < ActiveRecord::Base
  has_many :order_items
  belongs_to :category
  validates :name, uniqueness: true, presence: true
  validates :category_id, presence: true
  validates :price, presence: true
  validates :currency, presence: true
end

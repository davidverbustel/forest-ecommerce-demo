class Product < ActiveRecord::Base
  # has_many :order_items
  validates :name, uniqueness: true, presence: true
  validates :category, inclusion: { in: ["Beauty", "Computers", "Books", "Outdoors", "Grocery","Jewelery"], allow_nil: false }, presence: true
  validates :price, presence: true
  validates :currency, presence: true
end

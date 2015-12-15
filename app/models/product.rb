class Product < ActiveRecord::Base
  has_many :order_items
  belongs_to :category
  validates :name, presence: true # uniqueness: true # because faker generates sometimes the same name
  validates :category_id, presence: true
  validates :price, presence: true
  validates :currency, presence: true
end

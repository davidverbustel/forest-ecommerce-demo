class Category < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true
  has_many :products
end

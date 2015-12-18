class Product < ActiveRecord::Base
  has_many :order_items
  belongs_to :category
  validates :name, presence: true # uniqueness: true # because faker generates sometimes the same name
  validates :category_id, presence: true
  validates :price, presence: true
  validates :currency, presence: true
  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" },
    default_url: 'http://lorempixel.com/300/200/'
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
end

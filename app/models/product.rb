class Product < ApplicationRecord
  belongs_to :small_category
  belongs_to :recently
  has_many :image_products
  enum status: { stocking: 0, outofstock: 1 }
end

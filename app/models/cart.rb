class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :product
  has_many :orders
  validates :user_id, presence: true
  validates :product_id, presence: true
end

class Shoe < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true

  has_many :order_tags
end

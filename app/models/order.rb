class Order < ApplicationRecord
  belongs_to :user

  has_many :order_tags
  has_many :shoes, through: :order_tags
end

class Order < ApplicationRecord
  belongs_to :shoe
  belongs_to :user
  has_many :reviews
end

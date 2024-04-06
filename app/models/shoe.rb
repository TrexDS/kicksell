class Shoe < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_many :reviews, through: :orders, dependent: :destroy
end

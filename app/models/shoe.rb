class Shoe < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_many :reviews, through: :orders, dependent: :destroy
  has_many :favourites

  validates :name, :description, :price, :category, :size, presence: true

end

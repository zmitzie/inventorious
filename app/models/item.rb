class Item < ApplicationRecord
  has_many :orders
  has_many :members, through: :orders

  validates :name, presence: true
  validates :category, presence: true
end

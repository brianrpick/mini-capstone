class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_items
  has_many :items, through: :carted_items
end

class Category < ApplicationRecord
  has_many :item_categories
  has_many :products, through: :product_categories
end

class CartedItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :item 
  belongs_to :user

end

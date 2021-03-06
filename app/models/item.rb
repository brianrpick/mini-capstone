class Item < ApplicationRecord
  belongs_to :supplier
  has_many :orders
  has_many :images
  has_many :item_categories
  has_many :categories, through: :item_categories
  has_many :carted_items
  has_many :orders, through: :carted_items

  def pretty_time
    return created_at.strftime("%a, %r %b %y")
  end

  def sale_message
    if price.to_i < 2
      return "On Sale!"
    else 
      return "Regular Price"
    end
  end

  def tax
    return price * 0.09
  end

  def total 
    return price + (price * 0.09)
  end

end

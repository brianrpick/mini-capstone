class Item < ApplicationRecord
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
    return price.to_i * 0.09
  end

  def total 
    return price.to_i + (price.to_i * 0.09)
  end

end

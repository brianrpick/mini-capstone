class Item < ApplicationRecord
  def pretty_time
    return created_at.strftime("%a, %r %b %y")
  end
end

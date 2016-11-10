class ItemsController < ApplicationController
  def home
    @page_heading = "Welcome to wesellallot.com, Heres what we have for sale!"
    @item = Item.all
  end

  def chair
    @page_heading = "Here are the chairs we sell"
  end

  def hat
    @page_heading = "Here are the hats we sell"
  end

  def pants
    @page_heading = "Heres are the pants we sell"
  end

end

class ItemsController < ApplicationController
  def home
    @page_heading = "Welcome to wesellallot.com, Heres what we have for sale!"
  end

  def chair
    @page_heading = "Heres the chair we sell"
  end

  def hat
    @page_heading = "Heres the hat we sell"
  end

  def pants
    @page_heading = "Heres the pants that we sell"
  end

end

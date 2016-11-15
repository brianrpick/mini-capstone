class ItemsController < ApplicationController
  def home
    @page_heading = "Welcome to wesellalot.com!"
  end

  def chairs
    @page_heading = "Here are the chairs we sell"
    @item = Item.all
  end

  def hats
    @page_heading = "Here are the hats we sell"
    @item = Item.all
  end

  def pants
    @page_heading = "Heres are the pants we sell"
    @item = Item.all
  end

  def index 
    @page_heading = "Here is what we have for sale!"
    @item = Item.all
  end

  def buy
    @item = Item.find_by(id: params[:id])
  end

  def new
  
  end

  def create
    @item = Item.new(product_type: params[:product_type], name: params[:name].capitalize, description: params[:description], price: params[:price], image: params[:image])
    @item.save
  end
end

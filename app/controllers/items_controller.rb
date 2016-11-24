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
  def search
    @search_term = params[:search]
    @item = Item.where("product_type LIKE ?", "%#{@search_term}%")
    render :index
  end
  def index 
    @page_heading = "Here is what we have for sale!"
    sort_by = params[:sort]
    p params[:sort]
    if params[:sort] == "priceDESC"
      @item = Item.all.order(price: :DESC)
    elsif params[:sort] == "discount"
      @item = Item.all.where("price < ?", 100)
    elsif params[:sort] == "search"
      @item = Item.all.where(sort_by)
    else
      @item = Item.all.order(sort_by)
    end
  end

  def show
    if params[:id] == "rando"
      @item = Item.all.order("RANDOM()").first
    else
      @item = Item.find_by(id: params[:id])
    end
  end

  def buy
    @item = Item.find_by(id: params[:id])
  end

  def new
  
  end

  def create
    @item = Item.new(product_type: params[:product_type], name: params[:name].capitalize, description: params[:description], price: params[:price], image: params[:image])
    @item.save
    flash[:success] = "Recipe has been created!"
  end

  def edit
    @item = Item.find_by(id: params[:id])
  end
  def update
    item = Item.find_by(id: params[:id])
    item.assign_attributes(product_type: params[:product_type], name: params[:name], description: params[:description], price: params[:price], image: params[:image])
    item.save
    flash[:success] = "You have successfully edited the item."
    redirect_to "/items/#{item.id}"
  end

  def destroy
    item = Item.find_by(id: params[:id])
    item.destroy
    flash[:danger] = "You have successfully deleted the item"
    redirect_to "/items"
  end
end












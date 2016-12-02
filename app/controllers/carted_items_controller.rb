class CartedItemsController < ApplicationController
  def create
    item = Item.find_by(id: params[:id])
    cp = CartedItem.new(user_id: current_user.id, quantity: params[:quantity])
    cp.item_id = item.id
    cp.status = "carted"
    cp.save
    flash[:success] = "Your item has been added to the cart!"
    redirect_to "/items"
  end
  def index 
    @page_heading = "Here is your cart!"
    user = User.find_by(id: current_user.id)
    @cp = user.carted_items.where("status = ?", "carted")
    if @cp.nil?
      redirect_to "/items"
    end
  end
end

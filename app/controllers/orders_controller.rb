class OrdersController < ApplicationController
  
  def create
    item = Item.find_by(id: params[:id])
    order = Order.new(user_id: current_user.id, quantity: params[:quantity])
    order.item_id = item.id
    order.subtotal = item.price * order.quantity
    order.tax = order.subtotal * 0.09
    order.total = order.subtotal + order.tax 
    order.save
    flash[:success] = "Your order has been completed!"
    redirect_to "/items/#{item.id}/buy"
  end
  def show
    @order = Order.find_by(id: params[:id])
    @item = Item.find_by(id: params[:id])
  end
end

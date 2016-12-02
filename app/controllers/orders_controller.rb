class OrdersController < ApplicationController
  
  def create
    @ci = current_user.carted_items.where("status = ?", "carted")
    @order = Order.new(user_id: current_user.id)
    @ci.each do |in_cart|
      @order.subtotal = in_cart.item.price * in_cart.quantity
    end
    @order.tax = @order.subtotal * 0.09
    @order.total = @order.subtotal + @order.tax
    if @order.save
      @ci.update_all(status: "purchased", order_id: @order.id)
      session[:order_id] = @order.id
      flash[:success] = "Your order has been completed!"

    end
    redirect_to "/order/#{@order.id}"

  end
  def show
    @page_heading = "Here is your order!"
    @order = Order.find(params[:id])
  end
  def destroy
    cp = current_user.carted_items.find(params[:id])
    cp.destroy
  end
end

class ImagesController < ApplicationController
  def new
    @item = Item.find_by(id: params[:id])
  end
  def create
    @item = Item.find_by(id: params[:id])
    @image = Image.new(item_id: @item.id, url: params[:url])
    @image.save
    redirect_to "/items/#{@item.id}"
  end
end 


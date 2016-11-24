class SuppliersController < ApplicationController
  def new
  end
  def show
    which = params[:id]
    @supplier = Supplier.find_by(id: which)
  end
  def update
    @supplier = Supplier.assign_attributes(name: params[:name], email: params[:email], phone: params[:phone])
    @supplier.save
  end
  def create
    @supplier = Supplier.new(name: params[:name], email: params[:email], phone: params[:phone])
    @supplier.save
  end
  def destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.destroy
  end
  def edit
    @supplier = Supplier.find_by(id: which)
  end
  def index
    @supplier = Supplier.all
  end
end


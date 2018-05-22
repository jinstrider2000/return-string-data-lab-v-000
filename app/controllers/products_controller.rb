class ProductsController < ApplicationController
  def description
    prod = Product.find_by(id: params[:id])
    render :plain, prod.description
  end

  def inventory
    prod = Product.find_by(id: params[:id])
    render :plain, prod.inventory
  end
end

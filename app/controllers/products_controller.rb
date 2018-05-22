class ProductsController < ApplicationController
  def description
    prod = Product.find_by(id: params[:id])
    render plain: prod.description
  end

  def truncated_description
    prod = Product.find_by(id: params[:id])
    render plain: truncate(prod.description)
  end

  def inventory
    prod = Product.find_by(id: params[:id])
    render plain: prod.inventory_available?
  end

  def index
    @products = Product.all
  end

  def new

  end

  def create
    Product.create(name: params[:name], description: params[:description], inventory: params[:inventory], price: params[:price])
    redirect_to products_path
  end

end

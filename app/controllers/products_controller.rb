class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new(product_params)
  end

  def create
  end

  def destroy

  end

private
  def product_params
    params.require(:product).permit(:name, :cost, :origin)
  end
end

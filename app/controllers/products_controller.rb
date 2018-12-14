class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new

    render :new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      binding.pry
      redirect_to  products_path
    else
      render :new
    end
  end

  def destroy

  end

private
  def product_params
    params.require(:product).permit(:name, :cost, :origin)
  end
end

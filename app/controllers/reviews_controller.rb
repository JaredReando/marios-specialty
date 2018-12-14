class ReviewsController < ApplicationController


  def new
    @review = Review.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = Review.new(review_params)
    if @review.save
      redirect_to product_path(@review.product)
    else
      render :new
    end
  end

  def destroy

  end

  private
  def review_params
    params.require(:review).permit(:rating, :text)
  end
end

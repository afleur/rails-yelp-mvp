class Admin::ReviewsController < ApplicationController
    before_action :find_review

    def new
      @restaurant = Restaurant.find(params[:restaurant_id])
      @review = Review.new
    end


    def show
    end


    def edit
    end

    def update
      if @review.update(review_params)
        redirect_to admin_review_path(@review)
      else
        render :edit
      end
    end

    def destroy
      @review.destroy
      redirect_to admin_restaurant_path(@restaurant)
    end

  private

  def find_review
    @review = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  # def create
  #   @restaurant = Restaurant.find(params[:restaurant_id])
  #   @review = Review.new(review_params)
  #   @review.restaurant = @restaurant
  #   if @review.save
  #     redirect_to restaurant_path(@restaurant)
  #   else
  #     render :new
  #   end
  # end

end

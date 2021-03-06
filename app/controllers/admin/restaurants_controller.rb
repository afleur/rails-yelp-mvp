    # Let's anticipate on next week (with login)
class Admin::RestaurantsController < ApplicationController
    before_action :find_restaurant, only: [:show, :edit, :update, :destroy]

    def index
      @restaurants = Restaurant.all
    end

    def show
    end


    def edit
    end

    def update
      if @restaurant.update(restaurant_params)
        redirect_to restaurant_path(@restaurant)
      else
        render :edit
      end
    end

    def destroy
      @restaurant.destroy
      redirect_to restaurants_path
    end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end

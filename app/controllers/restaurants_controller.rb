class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    Restaurant.create(restaurant_params)
    flash[:notice] = 'your restaurant has been created'
    redirect_to restaurants_path
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    end

end
class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
  
  def new
    @restaurant = Restaurant.new()
    # @restaurant_count = Restaurant.count + 1
  end
  
  def create
  
    @restaurant = Restaurant.new(restaurant_params)
    
    if @restaurant.save
      flash[:notice] = "restaurant created successfully."

      # redirect_to(@restaurant)
      redirect_to(:action => 'index')
    else
      # @restaurant_count = Restaurant.count + 1
      render 'new'
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    # @restaurant_count = Restaurant.count
    if @restaurant.update_attributes(restaurant_params)
      flash[:notice] = "Restaurant updated successfully."
      # we want to redirect to the show page to see the changes on that record so we need to identify the id  of that paticular record as well.
      redirect_to(:action => 'show', :id => @restaurant.id)
    
    else
      # @restaurant_count = Restaurant.count
      render 'edit'
    end
  end

  def delete
    @restaurant = Restaurant.find(params[:id])
  end

  def destroy
    @restaurant = Restaurant.find(params[:id]).destroy
    flash[:notice] = "Restaurant '#{@restaurant.title}' destroyed successfully."
    redirect_to(:action => 'index')
  end
  


  private
    def restaurant_params
      params.require(:restaurant).permit(:title, :address, :description, :food_type)
    end
end

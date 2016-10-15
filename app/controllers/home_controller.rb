class HomeController < ApplicationController
  def index
  end

  def contact_us
  end

  def menu
  	if params[:section]
     @food_items = FoodItem.where section: params[:section]
    else
     @food_items = FoodItem.all
  end

  if params[:sort_column]
  	 @food_items = @food_items.order("#{params[:sort_column]} #{params[:sort_direction]}")
  end
 end 

  
  
end
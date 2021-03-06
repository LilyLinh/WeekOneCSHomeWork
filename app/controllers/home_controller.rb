class HomeController < ApplicationController
  def index
  end

  def contact_us
  end

  def menu
    if params[:search]
      @food_items = FoodItem.search(params[:search])
  	elsif params[:section].present?
      @food_items = FoodItem.where section: params[:section]
    else
      @food_items = FoodItem.all
    end


    if params[:sort_column].present?
    	 @food_items = @food_items.order("#{params[:sort_column]} #{params[:sort_direction]}")
    end
 end 

  

end
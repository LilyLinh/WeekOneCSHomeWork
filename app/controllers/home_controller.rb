class HomeController < ApplicationController
  def index
  end

  def contact_us
  end

  def menu
    if params[:search]
      @food_items = FoodItem.search(params[:search])
    end

  	if params[:section].present?
     @food_items = FoodItem.where section: params[:section]
  


  end

  if params[:sort_column].present?
  	 @food_items = @food_items.order("#{params[:sort_column]} #{params[:sort_direction]}")
  end
  
 end 

  

end
class CheckoutController < ApplicationController
  def index
  	@order = current_order
  end

  def confirm
  	@order = current_order
  	@order.confirm_at = Time.now
  	if @order.update_attributes order_params
  		flash[:success] = "Thank you for your order."
  		redirect_to order_path(current_order)
  	else
  		render 'index'
  	end

  end
  
   private
   def order_params
   	 params.require(:order).permit(:name, :address)
end
end

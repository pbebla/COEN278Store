class ShopperController < ApplicationController
  include CurrentCart
  before_action :set_cart
  skip_before_action :authorize
  def index
    @products = Product.order(:name)
  end

  def search  
    if params[:search].blank?  
      redirect_to(shopper_url, notice: "Empty field!")
      return  
    else  
      @results = Product.all.where("name LIKE ?", "%#{params[:search]}%") 
    end  
  end
end

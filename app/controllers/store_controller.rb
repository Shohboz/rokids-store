class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  
  def index
  	@products = Product.order(:title)
  end

  def show
  	@product = Product.find(params[:id])
  end

  def payment
  end

  def contacts
  end
end

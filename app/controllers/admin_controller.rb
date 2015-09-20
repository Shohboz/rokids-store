class AdminController < ApplicationController
  include CategoriesAvailable
  before_action :categories
  
  def index
  	@total_orders = Order.count
  end
end

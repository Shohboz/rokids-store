class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart, CategoriesAvailable
  before_action :set_cart, :categories

  def search
    if params[:search].present?
      @products = Product.search params[:search], misspellings: {edit_distance: 3, transpositions: true, partial: true}
    else
      @products = Product.order(:title).page(params[:page]).per(12)
    end
  end
  
  def index
    category = params[:category] && @categories.find(params[:category])
    @store = category
    @products = (category && category.products || Product).order(:title).page(params[:page]).per(12)
    @slides = Slide.all
  end

  def show
    @product = Product.find(params[:id])
    @group_products = @product.product_attributes.group_by {|item| item.title}
  end

  def payment
  end

  def contacts
  end

  def about
  end
end

class CategoryProductsController < ApplicationController
  before_action :set_category_product, only: [:show, :edit, :update, :destroy]

  # GET /category_products
  def index
    @category_products = CategoryProduct.all
  end

  # GET /category_products/1
  def show
  end

  # GET /category_products/new
  def new
    @category_product = CategoryProduct.new
  end

  # GET /category_products/1/edit
  def edit
  end

  # POST /category_products
  def create
    @category_product = CategoryProduct.new(category_product_params)

    if @category_product.save
      redirect_to @category_product, notice: 'Category product was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /category_products/1
  def update
    if @category_product.update(category_product_params)
      redirect_to @category_product, notice: 'Category product was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /category_products/1
  def destroy
    @category_product.destroy
    redirect_to category_products_url, notice: 'Category product was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_product
      @category_product = CategoryProduct.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def category_product_params
      params.require(:category_product).permit(:product_id, :category_id)
    end
end

class LineItemAttributesController < ApplicationController
  before_action :set_line_item_attribute, only: [:show, :edit, :update, :destroy]

  # GET /line_item_attributes
  def index
    @line_item_attributes = LineItemAttribute.all
  end

  # GET /line_item_attributes/1
  def show
  end

  # GET /line_item_attributes/new
  def new
    @line_item_attribute = LineItemAttribute.new
  end

  # GET /line_item_attributes/1/edit
  def edit
  end

  # POST /line_item_attributes
  def create
    @line_item_attribute = LineItemAttribute.new(line_item_attribute_params)

    if @line_item_attribute.save
      redirect_to @line_item_attribute, notice: 'Line item attribute was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /line_item_attributes/1
  def update
    if @line_item_attribute.update(line_item_attribute_params)
      redirect_to @line_item_attribute, notice: 'Line item attribute was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /line_item_attributes/1
  def destroy
    @line_item_attribute.destroy
    redirect_to line_item_attributes_url, notice: 'Line item attribute was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item_attribute
      @line_item_attribute = LineItemAttribute.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def line_item_attribute_params
      params.require(:line_item_attribute).permit(:product_attribute_id, :line_item_id)
    end
end

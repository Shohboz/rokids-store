class ImageAttachmentsController < ApplicationController
  include CurrentCart
  before_action :set_cart
  before_action :set_image_attachment, only: [:show, :edit, :update, :destroy]

  # GET /image_attachments
  def index
    @image_attachments = ImageAttachment.all
  end

  # GET /image_attachments/1
  def show
  end

  # GET /image_attachments/new
  def new
    @image_attachment = ImageAttachment.new
  end

  # GET /image_attachments/1/edit
  def edit
  end

  # POST /image_attachments
  def create
    @image_attachment = ImageAttachment.new(image_attachment_params)

    if @image_attachment.save
      redirect_to @image_attachment, notice: 'Image attachment was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /image_attachments/1
  def update
=begin
    if @image_attachment.update(image_attachment_params)
      redirect_to @image_attachment, notice: 'Image attachment was successfully updated.'
    else
      render :edit
    end
=end
    respond_to do |format|
      if @image_attachment.update(image_attachment_params)
        format.html { redirect_to @image_attachment.product, notice: 'Image attachment was successfully updated.' }
      end 
    end
  end

  # DELETE /image_attachments/1
  def destroy
    @image_attachment.destroy
    redirect_to image_attachments_url, notice: 'Image attachment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_attachment
      @image_attachment = ImageAttachment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def image_attachment_params
      params.require(:image_attachment).permit(:product_id, :image)
    end
end

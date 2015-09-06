require 'test_helper'

class ImageAttachmentsControllerTest < ActionController::TestCase
  setup do
    @image_attachment = image_attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_attachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_attachment" do
    assert_difference('ImageAttachment.count') do
      post :create, image_attachment: { image: @image_attachment.image, product_id: @image_attachment.product_id }
    end

    assert_redirected_to image_attachment_path(assigns(:image_attachment))
  end

  test "should show image_attachment" do
    get :show, id: @image_attachment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image_attachment
    assert_response :success
  end

  test "should update image_attachment" do
    patch :update, id: @image_attachment, image_attachment: { image: @image_attachment.image, product_id: @image_attachment.product_id }
    assert_redirected_to image_attachment_path(assigns(:image_attachment))
  end

  test "should destroy image_attachment" do
    assert_difference('ImageAttachment.count', -1) do
      delete :destroy, id: @image_attachment
    end

    assert_redirected_to image_attachments_path
  end
end

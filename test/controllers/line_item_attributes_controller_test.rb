require 'test_helper'

class LineItemAttributesControllerTest < ActionController::TestCase
  setup do
    @line_item_attribute = line_item_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:line_item_attributes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line_item_attribute" do
    assert_difference('LineItemAttribute.count') do
      post :create, line_item_attribute: { line_item_id: @line_item_attribute.line_item_id, product_attribute_id: @line_item_attribute.product_attribute_id }
    end

    assert_redirected_to line_item_attribute_path(assigns(:line_item_attribute))
  end

  test "should show line_item_attribute" do
    get :show, id: @line_item_attribute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @line_item_attribute
    assert_response :success
  end

  test "should update line_item_attribute" do
    patch :update, id: @line_item_attribute, line_item_attribute: { line_item_id: @line_item_attribute.line_item_id, product_attribute_id: @line_item_attribute.product_attribute_id }
    assert_redirected_to line_item_attribute_path(assigns(:line_item_attribute))
  end

  test "should destroy line_item_attribute" do
    assert_difference('LineItemAttribute.count', -1) do
      delete :destroy, id: @line_item_attribute
    end

    assert_redirected_to line_item_attributes_path
  end
end

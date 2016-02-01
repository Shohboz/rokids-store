require 'test_helper'

class UserStoriesTest < ActionDispatch::IntegrationTest
	fixtures :products

	test "buying a product" do
		LineItem.delete_all
		Order.delete_all
		item = products(:one)
		get "/"
		assert_response :success
		assert_template "index"

		xml_http_request :post, '/line_items', product_id: item.id
		assert_response :success

		cart = Cart.find(session[:cart_id])
		assert_equal 1, cart.line_items.size
		assert_equal item, cart.line_items[0].product

		get "/orders/new"
		assert_response :success
		assert_template "new"

		post_via_redirect "/orders", order: {
			name: "vasya",
			address: "Groove st.",
			email: "to@example.org"
		}
		assert_response :success
		assert_template "index"
		cart = Cart.find(session[:cart_id])
		assert_equal 0, cart.line_items.size

		orders = Order.all
		assert_equal 1, orders.size
		order = orders[0]

		assert_equal "vasya", order.name
		assert_equal "Groove st.", order.address
		assert_equal "to@example.org", order.email

		assert_equal 1, order.line_items.size
		line_item = order.line_items[0]
		assert_equal item, line_item.product

		mail = ActionMailer::Base.deliveries.last
		assert_equal ["to@example.org"], mail.to
		assert_equal 'from@example.com', mail[:from].value
		assert_equal 'Подтверждние заказа в интернет магазине "Спорт-юниор"', mail.subject
	end
end

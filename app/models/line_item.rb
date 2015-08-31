class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  has_many :line_item_attribute

  def price
  	product.price + line_item_attribute.to_a.sum {|n| n.product_attribute.price.to_i}
  end

  def total_price
  	price * quantity
  end
end

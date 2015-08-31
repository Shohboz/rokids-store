class LineItemAttribute < ActiveRecord::Base
  belongs_to :product_attribute
  belongs_to :line_item
end

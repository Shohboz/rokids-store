class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy

	def add_product(product, params)
		quantity = params[:quantity].to_i || 1

		current_item = line_items.where(product_id: product.id).map do |current|
			product_attributes = params.reject { |key, value| product.product_attributes.find_by(title: key, id: value).nil? }.map{|key, value| value.to_i}
			if current.line_item_attribute.pluck(:product_attribute_id).uniq.sort == product_attributes.uniq.sort
				current.quantity += quantity
				current
			else
				nil
			end
		end

		unless current_item.nil? || current_item.empty?
			current_item = current_item.compact.first
		end

		if current_item.nil? || current_item == []
			current_item = line_items.build(product_id: product.id, quantity: quantity)
			params.each do |key, value|
		      	attribute_attribute = product.product_attributes.find_by(title: key, id: value)
		      	unless attribute_attribute.nil?
		        	current_item.line_item_attribute.build(product_attribute_id: attribute_attribute.id)
		      	end
	    	end
		end
		current_item
	end

	def total_price
		line_items.to_a.sum { |item| item.total_price }
	end
end

class Product < ActiveRecord::Base
	has_many :line_items
	has_many :product_attributes
	has_many :image_attachments
	accepts_nested_attributes_for :image_attachments
  	attr_accessor :quantity

	before_destroy :ensure_not_referenced_by_any_line_item

	def quantity
	  @quantity || 1
	end

	def quantity=(value)
	  @quantity = value
	end

	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
			return true
		else
			errors.add(:base, 'существуют товарные позиции')
			return false
		end
	end
end

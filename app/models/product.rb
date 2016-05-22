require 'babosa'

class Product < ActiveRecord::Base
	searchkick
	extend FriendlyId
	friendly_id :slug_candidates, use: [:slugged, :finders]
	validates :title, :price, presence: true
	has_many :line_items
	has_many :category_products
	has_many :categories, through: :category_products
	has_many :product_attributes
	has_many :image_attachments
	accepts_nested_attributes_for :image_attachments
	has_many :orders, through: :line_items
  	attr_accessor :quantity

	before_destroy :ensure_not_referenced_by_any_line_item

	def quantity
	  @quantity || 1
	end

	def quantity=(value)
	  @quantity = value
	end

	def slug_candidates
    [
      :title,
      [:title, :id]
    ]
  	end

	def normalize_friendly_id(text)
		text.to_s.to_slug.normalize(transliterations: :russian).to_s
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

class Order < ActiveRecord::Base
	validates :email, presence: true
#	validates :status, inclusion: {in: valid_status}, presence: true
	has_many :line_items, dependent: :destroy

	STATUS = {
		ordered: 'Заказ размещен',
		changed: 'Были внесены изменения в заказ',
		shipped: 'Заказ отправлен',
		archived: 'В архиве'
	}

	def add_line_items_from_cart(cart)
		cart.line_items.each do |item|
			item.cart_id = nil
			line_items << item
			self.status = STATUS[:ordered]
		end
	end

	def self.status
		STATUS
	end

	def change_status(new_status)
		self.status = STATUS[new_status]
	end

	def self.valid_status
		STATUS.keys
	end
end

class Order < ActiveRecord::Base
	validates :name, :address, :email, presence: true
end

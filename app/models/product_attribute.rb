class ProductAttribute < ActiveRecord::Base
  validates :title, :value, :product_id, presence: true
  belongs_to :product, dependent: :destroy
end

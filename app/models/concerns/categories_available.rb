module CategoriesAvailable
	extend ActiveSupport::Concern
	private

	def categories
		@categories = Category.all
	end
end
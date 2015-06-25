class QuoteLine < ActiveRecord::Base
	has_one :product
	belongs_to :quote

	def product
		Product.find(self.product_id)
	end
end

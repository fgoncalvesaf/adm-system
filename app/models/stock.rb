class Stock < ApplicationRecord
  belongs_to :product

  # stock value atualization
  before_save do
  	@product = Product.find(self.product)
  	self.total = @product.price * self.quantity
  end

  # disable products out of stock
  after_save do
  	@product = Product.find(self.product)
  	if self.quantity > 0
  		@product.update_attribute(:status, :enabled)
  	else
  		@product.update_attribute(:status, :disabled)
  	end
  end
end

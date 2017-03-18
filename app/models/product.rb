class Product < ApplicationRecord
    enum status: [:enabled, :disabled]
    
    # set enabled as default
    after_initialize do
	    if new_record?
	    	self.status = :enabled
	    end
	end

	after_save do
		@stock = Stock.where(:product => self.id)
		@stock.each do |s|
			s.update(total: (self.price * s.quantity))
		end
	end

end
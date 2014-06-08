
# this class creates a new product in the shopping cart
class Product
	attr_accessor :item_name, :price_of_item

	def initialize
		@basket = {}
	end

	def basket(item_name, final_price)
		@basket[item_name] = final_price
	end 
end 
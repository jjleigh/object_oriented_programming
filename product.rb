class Product
	def initialize(product_name, price)
		@product_name = product_name
		@price = price
	end

	def basket(product_name, price)
		basket = {}
		basket[product_name] = price
	
	end 
end 
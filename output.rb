class Output
	attr_accessor :product_name, :price
	def initialize(product_name, price)
		@price = price
		@product_name = price
	end 

	def basic_tax_calculation(price)
		basic_tax = @price * 0.1

		price_after_tax = basic_tax + @price
	end

	def import_tax_calculation(product_name,price)
		import_tax = @price * 0.05
		price_after_tax = import_tax + @price

		display_item_and_price
	end 

	def display_item_and_new_price(product_name, price)
		puts "#{product_name} is #{price}"
		
	end 
	

	def total_tax_calculation()
		
	end

	# def total_price_calculation()
	# 	this wiill calculate the total price on all items in basket
	# end


end 
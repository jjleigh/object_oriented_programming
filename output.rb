require_relative 'Product'

class Output

	def no_tax(item_name, price_of_item)
		item_name = item_name
		final_price = price_of_item 
		tax = 0

		add_to_basket(item_name, final_price)
		display_item_and_new_price(item_name, final_price, tax)
	end 

	def basic_tax_calc(item_name, price_of_item)
		tax = price_of_item * 0.1
		final_price = tax + price_of_item

		display_item_and_new_price(item_name, final_price, tax)
	end

	def import_tax_calc(item_name, price_of_item)
		item_name = item_name
		tax = price_of_item * 0.05
		final_price = tax + price_of_item

		add_to_basket(item_name, final_price)
		display_item_and_new_price(item_name, final_price, tax)
	end 

	def add_to_basket(item_name, final_price)
		@product = Product.new
		@product.basket(item_name, final_price)
	end

	def display_item_and_new_price(item_name, final_price, tax)
		#item_on_receipt 
		puts " 1 #{item_name}: #{final_price}"	
		
		total_tax_calc(tax)
		total_price_calc(final_price)
	end 

#this calculates the total taxes paid
	def total_tax_calc(tax)
	taxes = []
	taxes << tax	
	total_taxes = taxes.inject(:+)
	
	puts "the total taxes: #{total_taxes}"
	end

#this wiill calculate the total price on all items in basket
	def total_price_calc(final_price)
		prices = []
		prices << final_price
		total_amount = prices.inject(:+)

		puts "Total amount: #{total_amount}"
	end
end 
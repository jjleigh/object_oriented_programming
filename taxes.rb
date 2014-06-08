require_relative 'Output'

class Input
	attr_accessor :item, :product_name, :price

#this method adds the new item to the basket
	def add_item
		puts "Welcome to the Jones market"
		puts " "
		puts "please input product name"
		product_name = gets.chomp
		puts "please input the price"
		price = gets.chomp.to_i

		product_type(product_name, price)
	end 

#this method collects the item code and checks for exemptions
	def product_type(product_name, price)
		item_name = product_name
		price_of_item = price
		puts "For books, food and medicine use code 100. For imported goods use code 300. Otherwise use code 500 "
		item_code = gets.chomp.to_i
		@output = Output.new
			case item_code
			when 100 then exempted(item_name, price_of_item)
			when 300 then import_tax(item_name, price_of_item) 
			when 500 then basic_tax(item_name, price_of_item)
			else
				puts "Invalid code, please try again!"
				add_item
			end
	end 

#this method collects exempted products
	def exempted(item_name, price_of_item)
		@output.no_tax(item_name, price_of_item)
		add_item
	end 

	# this method collects the price of an item and returns its import tax
	def import_tax(item_name, price_of_item)
		@output.import_tax_calc(item_name, price_of_item)
		add_item
	end 

	# #this method collects the price of an item returns its basic tax
	def basic_tax(item_name, price_of_item)
		@output.basic_tax_calc(item_name, price_of_item)
		add_item
	end
end 

banana = Input.new
banana.add_item

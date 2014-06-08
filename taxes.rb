require_relative 'Output'
require_relative 'Product'

class Input
	attr_accessor :item, :product_name, :price

	def initialize(product_name, price, item_code)
		@item_code = item
		@product_name = product_name
		@price = price
		@product = Product.new(product_name, price)
		@output = Output.new(product_name, price)
	end 

	# def self.run(name)
	# 	product  = new(name)
	# 	product.basic_tax_exemption_check
	# end

	def add_item(product_name, price)
		new_item = @product.basket(product_name, price)
	end 

#this method collects the item and checks for exemptions
	def product_type
		puts "Welcome to the Jones market"
		puts " "
		puts "please input product name"
		product_name = gets.chomp
		puts "please imput the price"
		price = gets.chomp.to_i


		def add_item(product_name, price)
			new_item = @product.basket(product_name, price)
		end 
		puts "For books, food and medicine use code 100. For imported goods use code 300. Otherwise use code 500 "
		item_code = gets.chomp.to_i

			case item_code
			when 100 then exempted(product_name, price)
			when 300 then import_tax(price) 
			when 500 then basic_tax(price)
			else
				puts "Invalid code, please try again!"
				product_type
			end
		basic_tax_exemption_check
	end 

	def add_item
	end 

#this method collects exempted 
	def exempted(product_name, price)

		@output.display_item_and_new_price(product_name, price)
	end 
	# this method collects the price of an item and returns its import tax
	def import_tax(price)
		@output.import_tax_calculation(price)
	end 

	# #this method collects the price of an item returns its basic tax
	def basic_tax(price)
		@output.basic_tax_calculation(price)
	end
end 

banana = Input.new("product_name", 10, 100)
banana.product_type

# require_relative 'Output'
# require_relative 'Product'

class Input
	attr_accessor :item, :product_name, :price

	def initialize(item_code, product_name, price)
		@item = item
		@product_name = product_name
		@price = price
		puts "Welcome to the Jones market"
	end 

	# def self.run(name)
	# 	product  = new(name)
	# 	product.basic_tax_exemption_check
	# end 

#this method collects the item and checks for exemptions
	def basic_tax_exemption_check
		puts "For books, food and medicine use code 100. Otherwise use code 400"
		item_code = gets.chomp.to_i
		puts "What is the product"
		product_name = gets.chomp
		puts "please imput the price"
		price = gets.chomp.to_i

		@product = Product.new(product_name, price)
		case item
			when 100 then import_tax(price)
			when 400 then basic_tax(price) 
		end

		basic_tax_exemption_check
	end 

	# this method collects the price of an item and returns its import tax
	def import_tax(price)
		@output.import_tax_calculation(price)
	end 

	# #this method collects the price of an item returns its basic tax
	# def Basic_tax(price)
	# 	@output.basic_tax_calculation(price)
	# end
end 

banana = Input.new(100, "banana", 3)
banana.basic_tax_exemption_check

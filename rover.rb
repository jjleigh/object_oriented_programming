class Rover
	attr_accessor :x, :y, :d
	CARDINALS =[:N,:E, :S, :W]

	def initialize(x,y,d)
		@x = x
		@y = y
		@d = d
	end

	def accept_command(input)
		input.each_char do |x| # .each_char = .split("").each
			if x == "L" || x == "R"
				rotate(x)
			elsif x == "M"
				move
			else
				puts "Error"
			end
		end
	end

	def move
		if @d == :N 
			@y += 1
		elsif @d == :S
			@y -= 1
		elsif @d == :E
			@x += 1
		elsif @d == :W
			@x -= 1
		else
			puts "Error"
		end
		if @y > 5 || @y <= 0 || @x > 5 || @x <= 0
			puts "Error, cannot leave grid."
		end
	end

	def rotate(command)
		current_face = CARDINALS.find_index(@d)
		if command == "R"
			current_face += 1
		elsif command == "L"
			current_face -= 1
		else
			puts "Error"
		end	
		@d = CARDINALS[current_face % 4]
	end
end 

rover1 = Rover.new(1, 2, :N)
rover2 = Rover.new(3, 3, :E)

rover1.accept_command("LMLMLMLMM")
rover2.accept_command("MMRMMRMRRM")

puts "Rover 1 @ (#{rover1.x}, #{rover1.y}), facing #{rover1.d}."
puts "Rover 2 @ (#{rover2.x}, #{rover2.y}), facing #{rover2.d}."

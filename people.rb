class Person
	def initialize(name)
		@name = name

	end 

	def greeting
		"Hi my name is #{@name}"
	end
end 


class Student < Person

	def learn
		"i'll get it!"
	end
end

class Instructor < Person
	
	def teach
		 "Everything in Ruby is an Object"
	end 
end


instructor = Instructor.new("chris")
learner = Student.new("christina")

puts instructor.greeting
puts learner.greeting

puts instructor.teach

# this will generate an undefined method error because this instance of the student 
# class does not have access to the method teach. 
# this is becuase teach is not defined in student but only in  the instructor class.
puts learner.teach 

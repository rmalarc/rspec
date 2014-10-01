require 'pry'

class Number

  attr_accessor :number

	def initialize(value)
		@number = value
	end

	def factorial
		return 1 if number == 0
		a = (1..@number).to_a
		a.reduce(:*)
	end

	def sum
		a = (1..@number).to_a
		a.reduce(:+)
	end

	def raise_to_the(power)
		a = [@number]*power
		a.reduce(:*)
	end

	def to_binary
		@number.to_s(2)
	end

	def to_hex
		@number.to_s(16)
	end

	def to_octal
		@number.to_s(8)
	end

	def to_base(base)
		@number.to_s(base)
	end

	def whats_the_number
		number_string = @number.to_s
		"The number is " + number_string + ". It's 0b"+ to_binary+ " in binary and in hex is: 0x"+to_hex + "f. If it was money, you could buy "+ number_string + " widgets for a dollar each. There are at least "+number_string+" stars in the cosmos."
	end

end

#binding.pry

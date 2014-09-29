require 'pry'

class Number

	SMALLEST_SPLIT = 3

	def factorial(value)
		return 1 if value == 0
		a = (1..value).to_a
		a.reduce(:*)
	end

	def sum(value)
		a = (1..value).to_a
		a.reduce(:+)
	end

	def elevate(value,power)
		a = [value]*power
		a.reduce(:*)
	end

	def size_in_bits(value)
		return value.to_s(2).length
	end

	def greatest(a,b)
		return a > b ? a : b
	end

	def size_of_third(a)
		return (a/3).round + (a%3 > 0 ? 1 : 0)
	end

	def generate_mask(mask_size)
		return ("1" * mask_size).to_i(2)
	end

	def split_by_thirds(a,chunk_size)
		mask = generate_mask(chunk_size)

		first_third_mask = mask
		second_third_mask = mask<<chunk_size
		last_third_mask = mask<<(chunk_size*2)

		return ([a&first_third_mask,(a&second_third_mask)>>chunk_size,(a&last_third_mask)>>(chunk_size*2)])
	end


	def big_product(a,b)
		max_size = greatest(size_in_bits(a),size_in_bits(b))
		return a*b if max_size <=SMALLEST_SPLIT
		chunk_size = size_of_third(max_size)
		base = elevate(2,chunk_size)

		x = split_by_thirds(a,chunk_size)
		y = split_by_thirds(b,chunk_size)
		pC = big_product(x[2] + x[1], y[2]+ y[1])
		pD = big_product(x[0] + x[2], y[0] + y[2])
		pE = big_product(x[0] + x[1], y[0] + y[1])
		pB = big_product(x[2], y[2])
		pA = big_product(x[1], y[1])
		pF = big_product(x[0], y[0])


		return pB*elevate(base,4) +  (pC - pB - pA)*elevate(base,3) + (pD + pA - pB - pF)*elevate(base,2) + (pE - pF - pA ) *base + pF
	end

end

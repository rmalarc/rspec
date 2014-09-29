require 'number'

describe Number do

	describe "#factorial" do

		it "should return 10! when we pass in 10" do
			n = Number.new
			expect(n.factorial(10)).to eq(3628800)
		end

		it "should return 1 when we pass in 0" do
			n = Number.new
			expect(n.factorial(0)).to eq(1)
		end

	end


	describe "#sum" do

		it "should return 3+2+1 when we pass in 3" do
			n = Number.new
			expect(n.sum(3)).to eq(3+2+1)
		end

	end

	describe "#elevate" do

		it "should return 5^3 when we pass in 3 to a base number of 5" do
			n = Number.new
			expect(n.elevate(5,3)).to eq(5*5*5)
		end

	end


	describe "#size_in_bits" do

		it "should return 4 when we pass in 0b1101" do
			n = Number.new
			expect(n.size_in_bits(0b1101)).to eq(4)
		end

	end


	describe "#greatest" do

		it "should return 4 when we pass in 4,50" do
			n = Number.new
			expect(n.greatest(4,50)).to eq(50)
		end

		it "should return 50 when we pass in 50,9" do
			n = Number.new
			expect(n.greatest(50,9)).to eq(50)
		end

		it "should return 4 when we pass in 4,4" do
			n = Number.new
			expect(n.greatest(4,4)).to eq(4)
		end
	end

	describe "#size_of_third" do

		it "should return 4 when we pass in 11" do
			n = Number.new
			expect(n.size_of_third(11)).to eq(4)
		end

		it "should return 4 when we pass in 12" do
			n = Number.new
			expect(n.size_of_third(12)).to eq(4)
		end

		it "should return 0 when we pass in 0" do
			n = Number.new
			expect(n.size_of_third(0)).to eq(0)
		end

	end

	describe "#split_by_thirds" do
		it "should return [0b0001,0b1001,0b1] when we pass in 0b110010001,4" do
			n = Number.new
			a = n.split_by_thirds(0b110010001,4)
			expect(a[0]).to eq(0b0001)
			expect(a[1]).to eq(0b1001)
			expect(a[2]).to eq(0b1)
		end

		it "should return [0b001,0b010,0b110] when we pass in 0b110010001,3" do
			n = Number.new
			a = n.split_by_thirds(0b110010001,3)
			expect(a[0]).to eq(0b001)
			expect(a[1]).to eq(0b010)
			expect(a[2]).to eq(0b110)
		end
	end

	describe "#big_product" do
		it "should return 1 when we pass in 1,1" do
			n = Number.new
			expect(n.big_product(1,1)).to eq(1)
		end

		it "should return 0 when we pass in 0,1" do
			n = Number.new
			expect(n.big_product(0,1)).to eq(0)
		end

		it "should return 200 when we pass in 10,20" do
			n = Number.new
			expect(n.big_product(10,20)).to eq(200)
		end

		it "should return 2749823789327489231794798231 when we pass in 2749823789327489231794798231,10" do
			n = Number.new
			expect(n.big_product(2749823789327489231794798231,10)).to eq(27498237893274892317947982310)
		end

	end


end

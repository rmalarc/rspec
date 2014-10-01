require 'number'

describe Number do

	describe "#factorial" do

		it "should return 10! when we pass in 10" do
			n = Number.new(10)
			expect(n.factorial).to eq(3628800)
		end

		it "should return 1 when we pass in 0" do
			n = Number.new(0)
			expect(n.factorial).to eq(1)
		end

	end


	describe "#sum" do

		it "should return 3+2+1 when we pass in 3" do
			n = Number.new(3)
			expect(n.sum).to eq(3+2+1)
		end

	end

	describe "#raise_to_the" do

		it "should return 5^3 when we pass in 3 to a base number of 5" do
			n = Number.new(5)
			expect(n.raise_to_the(3)).to eq(5*5*5)
		end

	end

	describe "#to_binary" do

		it "should return '1111' when we pass in 16" do
			n = Number.new(15)
			expect(n.to_binary()).to eq("1111")
		end

	end

	describe "#to_hex" do

		it "should return 'f' when we pass in 16" do
			n = Number.new(15)
			expect(n.to_hex()).to eq("f")
		end

	end

	describe "#to_octal" do

		it "should return '10' when we pass in 8" do
			n = Number.new(8)
			expect(n.to_octal).to eq("10")
		end

	end

	describe "#to_base" do

		it "should return '11' when we pass in 6 to_base(5)" do
			n = Number.new(6)
			expect(n.to_base(5)).to eq("11")
		end

	end

  context "#whats_the_number" do
    it "It should print out the number in binary and hex" do
      number_mock = double("whats_the_number")
      number_mock.should_receive(:to_binary)
      number_mock.should_receive(:to_hex)

#      Number.should_receive(:to_binary).and_return number_mock
#      Number.should_receive(:to_hex).and_return number_mock

      wrapper = Number.new(2)
      wrapper.whats_the_number
    end

  end


end

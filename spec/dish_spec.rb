require "dish"

describe "dish" do

		it "can be initialized with name and price" do
			curry = Dish.new(8)
			expect(curry.price).to eq 8
		end




end
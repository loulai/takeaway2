require "line_item"


describe "Line Item" do

	let (:burrito) {Dish.new("burrito", 5)}

	context "when created" do

		it "has the quantity of Dishes as one of its components" do
			expect(LineItem.new(burrito, 3).quantity).to eq 3
		end

		it "when not specified, a line item has a default quantity of one" do
			expect(LineItem.new(burrito).quantity).to eq 1
		end

	end


	context "returning information about the Dish" do

		it "can return the name of the dish it contains" do
			expect(LineItem.new(burrito, 3).dish_name).to eq "burrito"
		end

		it "can return total price, meaning the price of the dish multiplied by given quantity" do
			expect(LineItem.new(burrito, 3).line_price).to eq 15
		end

	end




end
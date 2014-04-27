require "line_item"


describe "line_item" do

	let (:burrito) {Dish.new("burrito", 5)}

	context "when created" do
	
	it "has a Dish as one of its components" do
		expect(LineItem.new(burrito, 3).dish_name).to eq "burrito"
	end

	it "has a quantity as one of its components" do
		expect(LineItem.new(burrito, 3).quantity).to eq 3
	end

	it "when not specified, a line item has a default quantity of one" do
		expect(LineItem.new(burrito).quantity).to eq 1
	end

	end


end
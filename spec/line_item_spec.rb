require "line_item"


describe "line_item" do

	let (:burrito) {Dish.new("burrito", 5)}
	
	it "when created, has a Dish as one of its components" do
		expect(LineItem.new(burrito, 3).dish_name).to eq "burrito"
	end


end
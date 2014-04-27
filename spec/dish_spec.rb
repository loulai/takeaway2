require "dish"

describe "dish" do

	let (:burrito) {Dish.new("burrito", 5)}
	
	it "has a name" do
		expect(burrito.name).to eq "burrito"
	end

	it "has a price" do
		expect(burrito.price).to eq 5
	end


end
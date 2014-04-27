require "dish"

describe "dish" do
	
	it "has a name" do
		burrito = Dish.new("burrito", 5)
		expect(burrito.name).to eq "burrito"
	end


end
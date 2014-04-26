require "dish"

describe "dish" do
	
	it "has a name" do
		curry = Dish.new
		expect(curry.name).to eq "curry"
	end




end
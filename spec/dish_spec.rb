require "dish"

describe "Dish" do

	let (:salmon_teriyaki) {Dish.new("salmon terikayi", 12)}
	
	it "has a name" do
		expect(salmon_teriyaki.name).to eq "salmon terikayi"
	end

	it "has a price" do
		expect(salmon_teriyaki.price).to eq 12
	end


end
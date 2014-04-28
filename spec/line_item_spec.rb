require "line_item"


describe "Line Item" do

	let (:salmon_teriyaki) {Dish.new("salmon terikayi", 12)}
	let (:main_course) {LineItem.new(salmon_teriyaki, 3)}

	context "when created" do

		it "has the quantity of Dishes as one of its components" do
			expect(main_course.how_many_dishes).to eq 3
		end

		it "when not specified, a line item has a default quantity of one" do
			expect(LineItem.new(burrito).quantity).to eq 1
		end

	end


	context "returning information about the Dish" do

		it "can return the name of the dish it contains" do
			expect(LineItem.new(burrito, 3).dish_name).to eq "burrito"
		end

	end


	context "line item's total price" do

		it "can return the price of the dish multiplied by quantity specified" do
			expect(LineItem.new(burrito, 3).line_price).to eq 15
		end

	end




end

#might want to refactor to have a "let" thingy for LineItem.new
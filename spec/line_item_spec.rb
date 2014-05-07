require "line_item"


describe "Line Item" do

	let (:salmon_teriyaki)           {Dish.new("salmon terikayi", 100)}
	let (:seaweed_salad)             {Dish.new("seaweed salad", 40)   }

	let (:main_course)                {LineItem.new(salmon_teriyaki, 2)}
	let (:appetizer)                  {LineItem.new(seaweed_salad)}

	context "when created" do

		it "has the quantity of Dishes as one of its components" do
			expect(main_course.how_many_dishes).to eq 2
		end

		it "when not specified, a line item has a default quantity of one" do
			expect(appetizer.how_many_dishes).to eq 1
		end

	end

	context "returning information about the Dish" do

		it "can return the name of the dish it contains" do
			expect(main_course.dish_name).to eq "salmon terikayi"
		end

	end

	context "line item's total price" do

		it "can return the price of the dish multiplied by quantity specified" do
			expect(main_course.line_price).to eq 200
		end

	end

end

#might want to refactor to have a "let" thingy for LineItem.new
require "dish"

describe "dish" do

		let (:dish_one) {Dish.new("curry", 8)}

		it "is put into a line item upon initialization" do
			expect(dish_one.line_item.count).to eq 1
		end

		it "has a price" do
			expect(dish_one.price).to eq 8
		end

end
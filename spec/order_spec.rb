require "order"
require "dish"


describe "Order" do

	let (:burrito) {Dish.new("burrito", 5)}
	let (:pie) {Dish.new("pie", 4)}

	let (:my_line_item) {LineItem.new(burrito, 3)}
	let (:another_line_item) {LineItem.new(pie)}

	let (:my_order) {Order.new([my_line_item, another_line_item], 19)}
	
	context "upon creation" do

		it "has an array of LineItems as one of its components" do
			expect(my_order.list_of_line_items).to eq [my_line_item, another_line_item]
		end

		it "knows the correct total price" do
			expect(my_order.correct_total_price).to eq 19
		end

	end

	context "ordering" do
		
		it "will raise an error when wrong order price is given" do
		expect(my_order.place_order).to raise_error(RuntimeError)
		end

	end

end
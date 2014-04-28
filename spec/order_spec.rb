require "order"
require "dish"
require "twilio_body"


describe "Order" do

	let (:burrito) {Dish.new("burrito", 5)}
	let (:pie) {Dish.new("pie", 4)}

	let (:my_line_item) {LineItem.new(burrito, 3)}
	let (:another_line_item) {LineItem.new(pie)}

	let (:my_order) {Order.new([my_line_item, another_line_item], 18)}
	
	context "upon creation" do

		it "has an array of LineItems as one of its components" do
			expect(my_order.list_of_line_items).to eq [my_line_item, another_line_item]
		end

		it "knows the correct total price" do
			expect(my_order.correct_total_price).to eq 19
		end

	end

	context "ordering" do
		
		it "will raise an error when estimated total price is wrong" do
			expect(my_order.place_order).to eq "you cannot math"
		end

		it "will send a text message when given the correct price" do
			expect(my_order.place_order).to eq true
		end

	end

end
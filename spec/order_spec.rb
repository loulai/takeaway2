require "order"
require "dish"


describe "Order" do

	let (:burrito) {Dish.new("burrito", 5)}
	let (:pie) {Dish.new("pie", 4)}

	let (:my_line_item) {LineItem.new(burrito, 3)}
	let (:another_line_item) {LineItem.new(pie)}

	let (:my_order) {Order.new([my_line_item, another_line_item], 15)} #forced est for now}
	
	context "upon creation" do

		it "has an array of LineItems as one of its components" do
			expect(my_order.list_of_line_items).to eq [my_line_item, another_line_item]
		end


		it "has an estimated total price as one of its components" do
			expect(my_order.estimated_total_price).to eq 15
		end



	end

	#but how to test for random, wrong estimate?

end
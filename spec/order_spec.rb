require "order"
require "dish"


describe "Order" do

	let (:burrito) {Dish.new("burrito", 5)}
	let (:pie) {Dish.new("pie", 4)}

	let (:my_line_item) {LineItem.new(burrito, 3)}
	let (:another_line_item) {LineItem.new(pie)}
	
	it "has an array of LineItems as one of its components" do
		order = Order.new([my_line_item], 15) #forced est for now
		expect(order.list_of_line_items).to eq [my_line_item]
	end

end
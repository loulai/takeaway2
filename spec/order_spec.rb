require "order"


describe "Order" do

	let (:pie) {Dish.new("pie", 4)}

	let (:my_line_item) {LineItem.new(burrito, 3)}
	let (:another_line_item) {LineItem.new(pie)}
	
	it "has a LineItem as one of its components" do
		order = Order.new(line_item, 15) #forced est for now
		expect(order.what_line_items).to eq my_line_item
	end

end
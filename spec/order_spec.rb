require "order"
require "dish"
require "twilio_body"


describe "Order" do

	let (:salmon_teriyaki) {Dish.new("salmon terikayi", 100)}
	let (:seaweed_salad) {Dish.new("seaweed salad", 40)}

	let (:main_course) {LineItem.new(salmon_teriyaki, 2)}
	let (:appetizer) {LineItem.new(seaweed_salad)}

	let (:my_dinner) {Order.new([appetizer, main_course], 240)}
	let (:dinner_with_wrong_estimate) {Order.new([appetizer, main_course], 235)}

	
	context "upon creation" do

		it "has an array of LineItems as one of its components" do
			expect(my_dinner.list_of_line_items).to eq [appetizer, main_course]
		end

		it "knows the correct total price" do
			expect(my_dinner.correct_total_price).to eq 240
		end

	end

	context "knows and compares prices" do
		
		it "will raise an error when estimated total price is wrong" do
			expect(dinner_with_wrong_estimate.is_price_estimate_correct?).to eq false
		end

		it "will return true when given the correct price" do
			expect(my_dinner.is_price_estimate_correct?).to eq true
		end

	end

end
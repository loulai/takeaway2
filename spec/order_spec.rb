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
		
		it "will know when estimated total price is wrong" do
			expect(dinner_with_wrong_estimate.is_price_estimate_correct?).to eq false
		end

		it "will know when the price given is right" do
			expect(my_dinner.is_price_estimate_correct?).to eq true
		end

		it "will raise an error message if the price is wrong" do
			expect{dinner_with_wrong_estimate.place_order}.to raise_error(RuntimeError)
		end

		it "will send a text message when the price given is correct" do
			expect(my_dinner.place_order).to eq "execute send_text"
		end

	end

end
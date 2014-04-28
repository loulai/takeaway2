require "twilio_body"

class Order

	include Text_body

	def initialize(list_of_line_items, estimated_total_price)
		@list_of_line_items = list_of_line_items
	end

	attr_reader :list_of_line_items

	attr_reader :estimated_total_price

	def correct_total_price
		# list_of_line_items = [my_line_item, another_line_item]
		@list_order_prices = list_of_line_items.map {|individual_line_item| individual_line_item.line_price }
		# => [15, 4]
		@list_order_prices.inject(:+)
	end

	def place_order
	
		if estimated_total_price != correct_total_price
			return "you cannot math"
		#this is only temporary

		else send_text
		end

	end


end






































# can list all the prices if can be bothered
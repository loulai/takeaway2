
class Order

include Text_body

	def initialize(list_of_line_items, estimated_total_price)
		@list_of_line_items = list_of_line_items
		@estimated_total_price = estimated_total_price
		is_price_estimate_correct?
	end

	attr_reader :list_of_line_items

	attr_reader :estimated_total_price

	def correct_total_price
		# list_of_line_items = [my_line_item, another_line_item]
		@list_order_prices = list_of_line_items.map {|individual_line_item| individual_line_item.line_price }
		# => [15, 4]
		@correct_total_price = @list_order_prices.inject(:+)
		@correct_total_price
	end

	def is_price_estimate_correct?
		if correct_total_price == estimated_total_price
			@estimate_status = true
		else 
			 @estimate_status = false
		end
	end

	def order_time
		t = Time.new + 600
		"#{t.hour}:#{t.min}"
	end

	def place_order
		if @estimate_status == false
			raise "You guessed the price wrong!"

		else @estimate_status
			send_text("Thank you dear customer, your order will arrive in #{order_time}")
		end
	end

end
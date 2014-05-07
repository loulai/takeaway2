
class Order

	attr_reader :list_of_line_items

	attr_reader :estimated_total_price

	def initialize(list_of_line_items, estimated_total_price)
		@list_of_line_items = list_of_line_items
		@estimated_total_price = estimated_total_price
	end
	
	def correct_total_price
		@list_order_prices   = list_of_line_items.map {|individual_line_item| individual_line_item.line_price }
		@correct_total_price = @list_order_prices.inject(:+)
		@correct_total_price
	end

	def is_price_estimate_correct?
		correct_total_price == estimated_total_price
	end

	def place_order
		raise "You guessed the price wrong!" unless is_price_estimate_correct?
	
		send_text("Thank you dear customer, your order will arrive in #{order_time}")	
	end

	def order_time
		t = Time.new + 600
		"#{t.hour}:#{t.min}"
	end

	def send_text(body)
			account_sid = 'AC81dba0a9bd8bb6fc2be33419f028a3ab'
			auth_token  = '44d8a2f7650bd77ac7caaae2ca56c8d1'
			@client     = Twilio::REST::Client.new account_sid, auth_token
			 
			message = @client.account.sms.messages.create(:body => body,
			    :to   => "+447760725881",     
			    :from => "+441353210104")
	end

end
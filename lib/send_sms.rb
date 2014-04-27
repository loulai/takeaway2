

require 'rubygems'
require 'twilio-ruby'


class Test

	def initialize(order = nil)
		@order = order
	end

	def make_call

		unless @order.nil?

			account_sid = "AC81dba0a9bd8bb6fc2be33419f028a3ab"
			auth_token = "44d8a2f7650bd77ac7caaae2ca56c8d1"
			client = Twilio::REST::Client.new account_sid, auth_token
			 
			from = "+441353210104" # Your Twilio number
			 
			friends = {
			"+447760725881" => "Customer",
			}
			friends.each do |key, value|
			  client.account.messages.create(
			    :from => from,
			    :to => key,
			    :body => "Hey #{value}, Monkey party at 6PM. Bring Bananas!"
			  ) 
			  puts "Sent message to #{value}"
			end

		else
			puts "nothing to do here!"
		end

	end

end





=begin

require 'rubygems'
require 'twilio-ruby'
	 

		# Get your Account Sid and Auth Token from twilio.com/user/account
		account_sid = 'AC81dba0a9bd8bb6fc2be33419f028a3ab'
		auth_token = '44d8a2f7650bd77ac7caaae2ca56c8d1'
		@client = Twilio::REST::Client.new account_sid, auth_token
		 
		message = @client.account.sms.messages.create(:body => "Hello Miha",
		    :to => "+447760725881",     # Replace with your phone number
		    :from => "+441353210104")   # Replace with your Twilio number
		puts message.sid
=end
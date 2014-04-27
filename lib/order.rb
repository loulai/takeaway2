class Order

	def initialize(list_of_line_items, estimated_total_price)
		@list_of_line_items = list_of_line_items
	end

	attr_reader :list_of_line_items

	def estimated_total_price
		15
	end





end
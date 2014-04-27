class LineItem

	def initialize(dish, quantity=1)
		@dish = dish
		@quantity = quantity
	end

	def dish_name
		@dish.name
	end

	attr_reader :quantity

	def line_price
		@dish.price * quantity
	end



end
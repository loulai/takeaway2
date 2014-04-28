class LineItem

	def initialize(dish, quantity=1)
		@dish = dish
		@how_many_dishes = quantity
	end

	def dish_name
		@dish.name
	end

	attr_reader :how_many_dishes

	def line_price
		@dish.price * how_many_dishes
	end

end
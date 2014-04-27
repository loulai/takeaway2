class Dish

	def initialize(dish_name, price)
		@dish_name = dish_name
		@price = price
		@line_item = []
		@line_item << {"#{dish_name}".to_sym => "#{price}"}
		# @menu = [{curry: 8}]
	end

	def dish_name
		@dish_name
	end

	def price
		@price
	end

	def line_item
		@line_item
	end

	def price
		self.line_item[0][@dish_name.to_sym].to_i #need to refer to index, fuck
	end


end
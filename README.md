This is the edited version
---
* Twilio is now part of the executeable code.

* In *order.rb*, under method *place_order*, I've edited the *if/else/elsif* statement.

* In *order.rb*, method *is_price_estimate_correct* now actually returns true/false instead of only assigning it to @estimate_status.

* Stubbed time to test text sending function.

takeaway3
=========
take three!
---
The same rules of the first Takeaway_challenge are followed. An application called Twilio is used to send the customer a real-life text message when they place their order successfully.

There is a class for: Dish, LineItem and Order.

Here is an example of placing an order in irb:

```
#setting up my two dishes
   salmon_terikayi = Dish.new("salmon teriyaki", 100)
   => #<Dish:0x007fdf0498b170 @name="salmon teriyaki", @price=100>

   seaweed_salad = Dish.new("seaweed salad", 45)
   => #<Dish:0x007fdf04971cc0 @name="seaweed salad", @price=45>


 #setting up my two line items
   main_course = LineItem.new(salmon_terikayi, 2)
   => #<LineItem:0x007fdf0488bf40 @dish=#<Dish:0x007fdf0498b170 @name="salmon teriyaki", @price=100>, @how_many_dishes=2>

   appetizer = LineItem.new(seaweed_salad) #default quantity is set to 1
   => #<LineItem:0x007fdf048fa260 @dish=#<Dish:0x007fdf04971cc0 @name="seaweed salad", @price=45>, @how_many_dishes=1>


 #creating my final order
   my_awesome_japanese_dinner = Order.new([appetizer, main_course], 245)
   => #<Order:0x007fdf048ba250 @list_of_line_items=[#<LineItem:0x007fdf048fa260 @dish=#<Dish:0x007fdf04971cc0 @name="seaweed salad", @price=45>, @how_many_dishes=1>, #<LineItem:0x007fdf0488bf40 @dish=#<Dish:0x007fdf0498b170 @name="salmon teriyaki", @price=100>, @how_many_dishes=2>], @estimated_total_price=245, @list_order_prices=[45, 200], @correct_total_price=245, @estimate_status=true>


 #placing my order
   my_awesome_japanese_dinner.place_order
   => *the customer should recieve an actual text*
```

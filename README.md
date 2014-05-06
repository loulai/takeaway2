Greetings Tony
===
This is the updated, edited version
---
I've included Twilio and a timestamp now.

I also changed the if/else/elsif bit of code in order.rb, method *place_order*.

In order.rb, *is_price_estimate_correct* now actually returns true/false instead of only assigning it to @estimate_status.


FAIL
====

You haven't stubbed the twillio client and it doesn't actually send the text!!

Your ruby could be more idiomatic for instance is_price_estimate_correct should return a value rather than setting an instance variable.

```
raise "You guessed the price wrong!" unless is_price_estimate_correct?
```

This doesn't anything else is always true, to evaluate a condition you need to use elsif.
```
else @estimate_status == true
```
Also @estimate_status == true is pointless you can just do @estimate_status so you should have
```
elsif @estimate_status
```

Fix your white space and line spacing

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
 => "execute send_text" #this is meant to actually send a text
```

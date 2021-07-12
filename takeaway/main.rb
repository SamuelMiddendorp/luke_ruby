require_relative "takeaway"
takeaway = TakeAway.new()
takeaway.add_item({"Carrot Cake" => 2.00})
takeaway.add_item({"Carrotttt Cake" => 2.00})
takeaway.add_item({"Carrot Cake" => 2.00})

puts takeaway.basket.items
puts takeaway.get_total()

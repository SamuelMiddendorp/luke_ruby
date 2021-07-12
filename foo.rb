require_relative "card"
require_relative "station"
card = Card.new(80)
s1 = Station.new("s1", "zone1")
s2 = Station.new("s2", "zone1")
puts card.credit
card.touch_in(s1)
card.touch_out(s2)
for journey in card.journeys
    puts journey.entry_station.name
    puts journey.entry_station.zone
    puts journey.exit_station.name
    puts journey.entry_station.zone
end
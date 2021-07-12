require_relative "journey"
class Card
    attr_accessor :credit, :current_station, :journeys
    def initialize(credit)
        @credit = credit
        @current_station = nil
        @journeys = []
    end
    def touch_in(entry_station)
        @current_station = entry_station
    end
    def touch_out(exit_station)
        journey = Journey.new(@current_station)
        @current_station = exit_station
        journeys << journey.finish(@current_station)
    end
end
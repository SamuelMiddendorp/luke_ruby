require_relative "card"
class Journey
    attr_accessor :entry_station, :exit_station
    def initialize(entry_station = nil)
        @entry_station = entry_station
    end
    def finish(exit_station)
        @exit_station = exit_station
        return self
    end
end

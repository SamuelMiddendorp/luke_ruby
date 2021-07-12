require_relative "basket"
class TakeAway
    MEALS = {
        "Carrot Cake" => 2.00,
        "Foo Cake" => 4.04,
        "Actual eatable cake" => 3.00
    }
    attr_accessor :basket
    def initialize()
        @basket = Basket.new()
    end
    def add_item(item)
        if MEALS.key?(item.keys[0])
            @basket.add_item(item)
        else
            puts "Item is not on the menu"
        end
    end
    def get_total()
        @basket.get_total()
    end
end
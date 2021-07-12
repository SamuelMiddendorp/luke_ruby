class Basket
    attr_accessor :items, :total
    def initialize()
        @items = {}
        @total = 0.0
    end
    # {"foocake" => 2.00}
    #{"luke" => "usher", "samuel" => "middendorp"}
    #keys = dictionary.keys(item) => ["foocake"]
    #item[keys[0]]

    def add_item(item)
        if @items.key?(item)
            @items[item] += 1
            @total += item[item.keys[0]]
        else
            @items[item] = 1
            @total += item[item.keys[0]]
        end
    end
    def get_total()
        @total
    end
end
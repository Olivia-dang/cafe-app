class Order
    def initialize
        @ORDER = Hash.new(0)
    end
    def add_item(name, quantity)
        @ORDER[name] += quantity
    end
    def get_items
        return @ORDER
    end
end
require_relative "./menu_item"

class Menu
    attr_reader :MENU
    def initialize
        @MENU = []
    end 
    def add_item(name, price)
        menu_item = MenuItem.new(name, price)
        @MENU << menu_item
    end
    def get_price(name)
        item = @MENU.find {|menu_item| menu_item.name == name}
        return item.price
    end
    def get_items
        return @MENU
    end
end
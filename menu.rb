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
    def display
        puts "Menu".center(15)
        puts "---------------".center(15)
        @MENU.each {|item| puts item}
        return nil
    end
end

# menu = Menu.new
# menu.add_item("latte", 4.00)
# menu.add_item("cake", 3.00)
# menu.display
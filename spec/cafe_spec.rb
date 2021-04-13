require_relative "../menu_item"
require_relative "../menu"
require_relative "../cafe"
require_relative "../order"

RSpec.describe MenuItem do
    # it is hard to test displaying something to the screen, so we just test the value
    it "should return the price of the item" do
        name = "latte"
        price = 4.00
        menu_item = MenuItem.new(name, price)
        expect(menu_item).to respond_to :name
    end
    it "should respond to item name" do
        name = "latte"
        price = 4.00
        menu_item = MenuItem.new(name, price)
        expect(menu_item.price).to eq(price)
    end
end
RSpec.describe Menu do
    it "should should be able to add an item" do 
        name = "latte"
        price = 4.00
        menu = Menu.new
        menu.add_item(name,price)
        expect(menu.get_items().length).to eq(1)
    end


    it "should be able to get an item price" do
        name = "latte"
        price = 4.00
        menu = Menu.new
        menu.add_item(name,price)
        expect(menu.get_price(name)).to eq(price)
    end
end
describe Order do
    it "should add an item to the order" do
        order = Order.new
        name = "latte"
        quantity = 2
        order.add_item(name, quantity)
        expect(order.get_items().length).to eq(1)
    end
    it "should update item quantity" do
        order = Order.new
        name = "latte"
        quantity = 2
        quantity_add = 3
        order.add_item(name, quantity)
        order.add_item(name, quantity_add)
        expect(order.get_items()[name]).to eq(5)
    end
end
describe Cafe do
    it "should create a cafe with a name" do
        name = "My cafe"
        menu_items = {}
        cafe = Cafe.new(name, menu_items)
        expect(cafe).to respond_to :name
        expect(cafe.name).to eq(name)
    end
    it "should create a cafe with a menu" do
        name = "My cafe"
        menu_items = {latte: 4.00, tea: 2.00}
        cafe = Cafe.new(name, menu_items)
        expect(cafe.menu.get_items.length).to be(2)
    end
    it "should add an item to order" do
        name = "My cafe"
        menu_items = {latte: 4.00, tea: 2.00}
        cafe = Cafe.new(name, menu_items)
        item = "latte"
        quantity = 1
        cafe.add_to_order(item, quantity)
        expect(cafe.get_order().get_items().length).to eq(1)
    end
end
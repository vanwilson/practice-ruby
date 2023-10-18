require "./food_module.rb"

class Store_item
  attr_reader :name, :size, :price
  attr_writer :price

  def initialize(input_product_name, input_product_size, input_product_price)
    @name = input_product_name
    @size = input_product_size
    @price = input_product_price
  end

  def print_item_info
    puts "#{@size} of #{@name} is $#{@price}"
  end

  def change_price(number)
    @price = @price + number
  end
end

item1 = Store_item.new("Coca-Cola", "16 oz.", 2.50)
item1.print_item_info
p item1.change_price(0.94)

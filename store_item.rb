# item1 = {
#   :name => "Coca-Cola",
#   :size => "16 oz.",
#   :price => 2.50,
# }

# item2 = {
#   name: "Coca-Cola Zero",
#   size: "8 oz.",
#   price: 1.19,
# }

# item3 = {
#   :name => "Cherry Vanilla Coca-Cola",
#   :size => "1 Liter",
#   :price => 5.99,
# }

# puts "#{item1[:size]} of #{item1[:name]} is $#{item1[:price]}"

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

class Food < Store_item
  def shelf_life
    @best_buy = "7 days"
  end
end

item1 = Store_item.new("Coca-Cola", "16 oz.", 2.50)
item1.print_item_info
p item1.change_price(0.94)

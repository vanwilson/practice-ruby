require "http"

all_products = HTTP.get("http://localhost:3000/all_products.json")
first_product = HTTP.get("http://localhost:3000/first_product.json")
second_product = HTTP.get("http://localhost:3000/second_product.json")
third_product = HTTP.get("http://localhost:3000/third_product.json")
fourth_product = HTTP.get("http://localhost:3000/fourth_product.json")
fifth_product = HTTP.get("http://localhost:3000/fifth_product.json")

p "Welcome to Magnet World!"
p "Which product would you like to see? 1, 2, 3, 4, 5, or all?"
input = gets.chomp
if input == 1
  p first_product.parse
elsif input == 2
  p second_product.parse
elsif input == 3
  p third_product.parse
elsif input == 4
  p fourth_product.parse
elsif input == 5
  p fifth_product.parse
else
  p all_products.parse
end

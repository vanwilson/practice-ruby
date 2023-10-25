require "http"

p "Welcome to Magnet World!"
p "Which product would you like to see? 1, 2, 3, 4, 5, or all?"
id = gets.chomp
all_products = HTTP.get("http://localhost:3000/all_products.json")
product = HTTP.get("http://localhost:3000/product/:#{id}.json")

require "http"

response = HTTP.get("http://localhost:3000/first_product.json")
p response.parse

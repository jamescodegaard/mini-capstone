require "http"

response = HTTP.get("http://localhost:3000/api/products_url")

p response.parse
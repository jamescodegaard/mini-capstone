require "http"

index = HTTP.get("http://localhost:3000/api/products/")

p index.parse
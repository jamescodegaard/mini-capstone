require "http"

index = HTTP.get("https://peaceful-reaches-05151.herokuapp.com/api/products/")

p index.parse
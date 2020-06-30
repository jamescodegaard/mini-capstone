require "http"
require "tty-table"

response = HTTP.get("https://peaceful-reaches-05151.herokuapp.com/api/products_url")

table = TTY::Table.new [response.parse]

table.render(:ascii)

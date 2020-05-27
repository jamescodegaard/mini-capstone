require "http"
require "tty-table"

response = HTTP.get("http://localhost:3000/api/products_url")

table = TTY::Table.new [response.parse]

table.render(:ascii)

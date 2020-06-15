
# Supplier.create!([
#   {name: "Gucci", email: "gucci@gucci.guc", phone_number: "867-5409"},
#   {name: "BahamaMama", email: "bahama@gmail.com", phone_number: "354-3928"}
# ])

# Product.create!([
#   {name: "Hawaiian Shirt", price: "35.0", image_url: "https://35f0jq1fcotly82b3o727xi0-wpengine.netdna-ssl.com/wp-content/uploads/rocky-island-palms-hawaiian-shirt-8-510x765.jpg", description: "Back to the original description... something about this being your dad's favorite.", in_stock: true, supplier_id: 1},
#   {name: "Blue Teapot", price: "45.0", image_url: "https://primulaproducts.com/wp-content/uploads/2013/04/PCI-4340-floral-cast-teapot-3-4-view-2.jpg", description: "A lil short & stout, but I have a handle and a spout!", in_stock: true, supplier_id: 1},
#   {name: "Rainbow Lapel Pin", price: "23.0", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQgnE2rj870Co3d7nO1dM6Wp6ZZ6Iz-iTeiL4mByD9cze3FgxX33u5ykIBaW8Ef2pekWnubu_Nf&usqp=CAc", description: "Pin it up, dude", in_stock: true, supplier_id: 1},
#   {name: "Cage Pants", price: "28.0", image_url: "https://www.dhresource.com/0x0/f2/albu/g9/M00/E6/99/rBVaWF4S-ACAD0gpAABALJ2Cb3Y708.jpg", description: "Truly a treasure of the nation.", in_stock: true, supplier_id: 1},
#   {name: "Gucci Slides", price: "9.0", image_url: "https://cache.mrporter.com/variants/images/666467151987779/fr/w2000_q80.jpg", description: "Not counterfeit.", in_stock: true, supplier_id: 1}
# ])

# Image.create!([
#   {url: "https://cache.mrporter.com/variants/images/666467151987779/fr/w2000_q80.jpg", product_id: 5},
#   {url: "https://primulaproducts.com/wp-content/uploads/2013/04/PCI-4340-floral-cast-teapot-3-4-view-2.jpg", product_id: 2},
#   {url: "https://35f0jq1fcotly82b3o727xi0-wpengine.netdna-ssl.com/wp-content/uploads/rocky-island-palms-hawaiian-shirt-8-510x765.jpg", product_id: 1},
#   {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQgnE2rj870Co3d7nO1dM6Wp6ZZ6Iz-iTeiL4mByD9cze3FgxX33u5ykIBaW8Ef2pekWnubu_Nf&usqp=CAc", product_id: 3},
#   {url: "https://www.dhresource.com/0x0/f2/albu/g9/M00/E6/99/rBVaWF4S-ACAD0gpAABALJ2Cb3Y708.jpg", product_id: 4}
# ])

# Category.create!([
#     {name: "Clothing"},
#     {name: "Accessory"},
#     {name: "Trinket"}
#   ])

# ProductCategory.create!([
#   {product_id: 1, category_id: 1},
#   {product_id: 3, category_id: 2},
#   {product_id: 5, category_id: 2},
#   {product_id: 7, category_id: 3},
#   {product_id: 4, category_id: 1},
#   {product_id: 2, category_id: 3}
# ])
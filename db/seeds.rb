Supplier.create!([
  {name: "Gucci", email: "gucci@gucci.guc", phone_number: "867-5409"},
  {name: "BahamaMama", email: "bahama@gmail.com", phone_number: "354-3928"}
])
Product.create!([
  {name: "Hawaiian Shirt", price: "35.0", description: "Back to the original description... something about this being your dad's favorite.", in_stock: true, supplier_id: 1},
  {name: "Blue Teapot", price: "45.0", description: "A lil short & stout, but I have a handle and a spout!", in_stock: true, supplier_id: 1},
  {name: "Rainbow Lapel Pin", price: "23.0", description: "Pin it up, dude", in_stock: true, supplier_id: 1},
  {name: "Cage Pants", price: "28.0", description: "Truly a treasure of the nation.", in_stock: true, supplier_id: 1},
  {name: "Slinkie", price: "30.0", description: "Down diddy down diddy down down down", in_stock: true, supplier_id: 1},
  {name: "Gumball Machine", price: "75.0", description: "Prefer the fun flavors over just 'bubblegum'? Email me later.", in_stock: true, supplier_id: 2},
  {name: "Gucci Slides", price: "9.0", description: "Not counterfeit.", in_stock: true, supplier_id: 1},
  {name: "Space Jam Hoodie", price: "46.0", description: "Don't even bring me here anymore, alright?!", in_stock: true, supplier_id: 1}
])
CartedProduct.create!([
  {user_id: 2, product_id: 3, quantity: 5, status: "carted", order_id: nil},
  {user_id: 3, product_id: 2, quantity: 6, status: "carted", order_id: nil},
  {user_id: 2, product_id: 4, quantity: 3, status: "purchased", order_id: nil},
  {user_id: 2, product_id: 3, quantity: 20, status: "carted", order_id: nil}
])
Category.create!([
  {name: "Clothing"},
  {name: "Accessory"},
  {name: "Trinket"}
])
ProductCategory.create!([
  {product_id: 1, category_id: 1},
  {product_id: 3, category_id: 2},
  {product_id: 5, category_id: 2},
  {product_id: 7, category_id: 3},
  {product_id: 4, category_id: 1},
  {product_id: 2, category_id: 3}
])
Image.create!([
  {url: "https://cache.mrporter.com/variants/images/666467151987779/fr/w2000_q80.jpg", product_id: 5},
  {url: "https://primulaproducts.com/wp-content/uploads/2013/04/PCI-4340-floral-cast-teapot-3-4-view-2.jpg", product_id: 2},
  {url: "https://35f0jq1fcotly82b3o727xi0-wpengine.netdna-ssl.com/wp-content/uploads/rocky-island-palms-hawaiian-shirt-8-510x765.jpg", product_id: 1},
  {url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQgnE2rj870Co3d7nO1dM6Wp6ZZ6Iz-iTeiL4mByD9cze3FgxX33u5ykIBaW8Ef2pekWnubu_Nf&usqp=CAc", product_id: 3},
  {url: "https://www.dhresource.com/0x0/f2/albu/g9/M00/E6/99/rBVaWF4S-ACAD0gpAABALJ2Cb3Y708.jpg", product_id: 4}
])
User.create!([
  {name: "James", email: "jamescodegaard@gmail.com", password_digest: "$2a$12$G1WY3Fx7Ndz327Jwd02UDeHppAtGwnJ991o/d6NLMBBWUnvK76SEy", admin: false},
  {name: "Seamus", email: "seamus@gmail.com", password_digest: "$2a$12$AuidRYQrCnVuOpwaSi0CJuzi44xxZldZcB4S11IpCqLeawv7iaKwS", admin: false},
  {name: "James", email: "james@gmail.com", password_digest: "$2a$12$D40DjUgB8e.Wacg9riNgv.TowA3Qg/oH.2xcw0ZT7BANBppmOv3rq", admin: true}
])
Order.create!([
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: "23.0", tax: nil, total: nil},
  {user_id: 1, subtotal: "92.0", tax: nil, total: nil},
  {user_id: 1, subtotal: "92.0", tax: "2.07", total: "94.07"},
  {user_id: 1, subtotal: "92.0", tax: "8.28", total: "100.28"},
  {user_id: 2, subtotal: "135.0", tax: "12.15", total: "147.15"},
  {user_id: 2, subtotal: "135.0", tax: "12.15", total: "147.15"}
])

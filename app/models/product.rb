class Product < ApplicationRecord

  validates :name, uniqueness: true, length: { in: 1...100 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :supplier_id, presence: true
  # validates :description, length: { in: 10...500 }

  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end
  has_many :images
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :carted_products
  has_many :orders, through: :carted_products


  
  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def category_names
    categories.map { |category| category.name }
    # category_names = []
    # categories.each do |category|
    #   category_names << category.name
    # end
    # category_names
  end

end

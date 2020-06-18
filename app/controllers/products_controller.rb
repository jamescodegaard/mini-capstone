class ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      supplier_id: params[:supplier_id],
      description: params[:description]
    )
    if @product.save
      redirect_to "/products/#{@product.id}"
    else 
      render 'error.html.erb'
      # render json: {message: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def edit
    @product = Product.find(params[:id])
    render 'edit.html.erb'
  end
  
  def update
    @product = Product.find(params[:id])
    @product.name = params[:name]
    @product.price = params[:price]
    @product.description = params[:description]
    @product.supplier_id = params[:supplier_id]
    if @product.save
      redirect_to "/products/#{@product.id}"
    else 
      render 'error.html.erb'
      # render json: {message: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end
end

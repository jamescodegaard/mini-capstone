class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    if params[:search]
      @products = Product.where("name iLIKE ?", "%#{params[:search]}%")
    end

    if params[:discount]
      @products = @products.where("price < ?", "#{params[:discount]}")
    end

    if params[:sort]
      @products = @products.order(:price)
    end

    render 'index.json.jb'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )
    if @product.save #happy
      render 'show.json.jb'
    else #sad
      render json: {error: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.image_url = params[:image_url] || @product.image_url
    if @product.save #happy
      render 'show.json.jb'
    else #sad
      render json: {error: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "Okay but that's what I was going to buy...."}
  end

end

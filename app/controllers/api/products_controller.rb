class Api::ProductsController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def index
    if current_user
      @products = Product.all
      if params[:search]
        @products = Product.where("name iLIKE ?", "%#{params[:search]}%")
      end

      if params[:discount] == "true"
        @products = @products.where("price < ?", "10")
      end

      if params[:sort]
        if params[:sort_order] == "asc"
          @products = @products.order(price: :asc)
        elsif params[:sort_order] == "desc"
          @products = @products.order(price: :desc)
        end
      end

      render 'index.json.jb'
    else
      render json: []
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      supplier_id: params[:supplier_id],
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

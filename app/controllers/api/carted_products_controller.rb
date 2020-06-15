class Api::CartedProductsController < ApplicationController
  
  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted"
    )
    if @carted_product.save
      render 'show.json.jb'
    else
      render json: {message: "lol, nope", errors: @order.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def index
  end

end

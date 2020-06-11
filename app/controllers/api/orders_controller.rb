class Api::OrdersController < ApplicationController
  
  before_action :authenticate_user

  def create
    product = Product.find_by(id: params[:product_id])
    subtotal = product.price * params[:quantity].to_i
    tax = subtotal * 0.09
    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: subtotal,
      tax: tax,
      total: subtotal + tax
    )
    if @order.save
      render 'show.json.jb'
    else
      render json: {message: "lol, nope", errors: @order.errors.full_messages}, status: :unprocessable_entity
    end
  end

end

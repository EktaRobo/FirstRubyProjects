class CartsController < ApplicationController
  def create
    @cart = Cart.new(cart_params)
    @cart.save!
  end

  private
  def cart_params
    params.require(:cart).permit(:quantity, :Item_id, :Order_id)
  end
end
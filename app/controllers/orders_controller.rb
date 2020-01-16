class OrdersController < ApplicationController
  def new
    @order = Order.new()
  end

  def create
    raise
    @order = Order.new(order_params)
    @order.user = current_user
    @order.organization = current_user.organization
    @order.status = "Pending"
    @order.save
    redirect_to root_path
  end

  private

  def order_params
    params.require(:order).permit(:pickup_address)
  end
end

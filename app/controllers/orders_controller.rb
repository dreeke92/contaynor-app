class OrdersController < ApplicationController
  def new
    @order = Order.new()
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    @order.organization = current_user.organization
    @order.status = "Pending"
    @order.save
  end

  private

  def order_params
    params.require(:order).permit(:pickup_address_id, :delivery_address_id)
  end
end

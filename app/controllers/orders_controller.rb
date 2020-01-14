class OrdersController < ApplicationController
  def new
    @order = Order.new()
    @addresses = current_user.organization.addresses
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    @order.organization = current_user.organization
    @order.status = "Pending"
    @order.save
    raise
    redirect_to root_path
  end

  private

  def order_params
    params.require(:order).permit(:pickup_date, :pickup_time, :pickup_address, :delivery_address, :comment)
  end
end

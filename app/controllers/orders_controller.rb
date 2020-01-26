class OrdersController < ApplicationController
  def new
    @order = Order.new()
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    @order.pickup_date = Date.today
    @order.organization = current_user.organization
    @order.status = "Requesting"
    @order.save
    redirect_to new_order_transport_load_path(@order)
  end

  def update
    @order = Order.find(params[:id])
    @order.update(status: "Pending")
    @order.save
    redirect_to root_path
  end

  def index
    @orders = current_user.organization.orders
  end

  private

  def order_params
    params.require(:order).permit(:pickup_address_id, :delivery_address_id, :comment)
  end
end

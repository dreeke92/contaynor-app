class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = current_user.orders.build(order_params)
    @order.organization_id = current_user.organization.id
    @order.update(status: 0)
    @order.save!
    redirect_to new_order_transport_load_path(@order)
  end

  def show
    @order = Order.where(id: params[:id])&.first
    @order || redirect_to(orders_path)
  end

  def update
    @order = Order.find(params[:id])
    @order.update(status: 1)
    @order.save
    redirect_to orders_path
  end

  def index
    @orders = current_user.organization.orders
  end

  private

  def order_params
    params.require(:order).permit(:pickup_address_id, :delivery_address_id, :comment, :pickup_date, :pickup_time)
  end
end

class OrdersController < ApplicationController
  before_action :sanitize, only: :update

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

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])

    if params.dig(:order, :status).nil?
      @order.update(status: 1)
    else
      @order.update(order_params)
    end

    @order.save
    redirect_to orders_path
  end

  def index
    @orders = current_user.organization.orders
    @organization = nil

    # if org id params exist and user is an contaynor employee
    if params[:org_id].present? && current_user.contaynor_employee?
      @organization = Organization.find(params[:org_id])
      @orders = @organization.orders
    end
  end

  private

  def order_params
    params.require(:order).permit(:pickup_address_id,
                                  :delivery_address_id, :comment,
                                  :pickup_date, :pickup_time, :status)
  end

  def sanitize
    params[:order][:status] = params.dig(:order, :status).to_i unless params.dig(:order, :status).nil?
  end
end

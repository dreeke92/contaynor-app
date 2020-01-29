class TransportLoadsController < ApplicationController
  def new
    @order = Order.find(params[:order_id])
    @transport_load = TransportLoad.new
    @transport_loads = @order.transport_loads
  end

  def create
    @transport_load = TransportLoad.new(transport_load_params)
    @order = Order.find(params[:order_id])
    @transport_load.order = @order
    @transport_load.save
    redirect_to new_order_transport_load_path(@order)
  end

  private

  def transport_load_params
    params.require(:transport_load).permit(:load_type, :unit_weight, :order_id)
  end
end

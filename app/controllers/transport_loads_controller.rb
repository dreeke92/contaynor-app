class TransportLoadsController < ApplicationController
  def new
    @order = Order.find(params[:order_id])
    @transport_load = TransportLoad.new()
  end

  def create

  end
end

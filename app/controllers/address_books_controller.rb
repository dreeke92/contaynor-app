class AddressBooksController < ApplicationController
  def new
    # @address = Address.new
  end

  def create
    address = Address.new(address_params)

    if address.save!
      if address_params[:head_quarters] == '1'
        # check if organization has a headquarter and remove it as headquarter
        hq = current_user.organization.address_books&.where(head_quarters: true).first
        hq&.update(head_quarters: false)
      else
        address_book = current_user.organization.address_books.build(address_id: address.id, address_relation: address_params[:address_relation], head_quarters: address_params[:head_quarters])
        address_book.save!
      end
    end

    redirect_to new_order_path
  end

  private

  def address_params
    params.require(:address).permit(:street_name, :street_number, :description, :address_relation, :head_quarters,
                                    :postal_code, :telephone_number, :city, :country)
  end
end

class OrganizationsController < ApplicationController
  def show
    @organization = current_user.organization

    @organization || redirect_to(root_path)
  end

  def remove_from_organization
    user = User.where(id: params[:user_id])&.first

    if user && user.id != current_user.id
      user.organization = nil
      user.save
    end

    redirect_to admin_user_management_path
  end
end

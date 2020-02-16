class UsersController < ApplicationController
  def create
    user = User.new(user_params)

    if params.dig(:user, :org_id).present?
      user.organization = Organization.find(params.dig(:user, :org_id).to_i)
    else
      user.organization = current_user.organization
    end

    user.save
    redirect_to admin_user_management_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    @user.update(user_params)
    @user.save

    redirect_to management_index_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :company_role, :telephone_number,
                                 :employee_admin, :organization_admin, :master_admin, :dark_theme)
  end
end


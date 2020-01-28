class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    user.organization = current_user.organization

    user.save
    redirect_to admin_user_management_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :company_role, :telephone_number,
                                 :employee_admin, :organization_admin, :master_admin, :dark_theme)
  end
end

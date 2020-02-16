module Admin
  class UserManagementController < ApplicationController
    before_action :org_admin?

    def index
      @users = current_user.orgainzation_members
      @organization = nil

      # if org id params exist and user is an contaynor employee
      if params[:org_id].present? && current_user.contaynor_employee?
        @organization = Organization.find(params[:org_id])
        @users = @organization.users
      end
    end
  end
end

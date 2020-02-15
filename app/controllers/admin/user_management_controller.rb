module Admin
  before_action :is_admin

  class UserManagementController < ApplicationController
    def index
      @users = current_user.orgainzation_members
    end
  end
end

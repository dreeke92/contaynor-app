class Admin::UserManagementController < ApplicationController
  def index
    @users = current_user.orgainzation_members
  end
end

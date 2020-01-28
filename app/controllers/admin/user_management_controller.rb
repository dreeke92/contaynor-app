class Admin::UserManagementController < ApplicationController
  def index
    @users = User.non_admins
  end
end

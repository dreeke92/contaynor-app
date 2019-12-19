class DashboardController < ApplicationController
  def show
    @organization = current_user.organization
  end
end

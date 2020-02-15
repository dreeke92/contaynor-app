class Management::OrganizationsController < ApplicationController
  before_action :is_contaynor_employee

  def index
    @organizations = Organization.all
  end
end

module Management
  class OrganizationsController < ApplicationController
    before_action :contaynor_employee?

    def index
      @organizations = Organization.all
    end
  end
end

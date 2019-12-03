class TemplatesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:page]

  def page
  end
end

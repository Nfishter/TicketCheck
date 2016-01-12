class WelcomeController < ApplicationController
	before_filter :check_admin

  def check_admin
  	redirect_to '/admin/index' if current_user.admin?
  end

  def index
  end
end

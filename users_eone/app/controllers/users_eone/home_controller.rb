require_dependency "users_eone/application_controller"

module UsersEone
  class HomeController < ApplicationController

    def index
    	@users = User.order(:id => :desc).page(params[:page]).per(10)
    end
  end
end

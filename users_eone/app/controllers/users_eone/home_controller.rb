require_dependency "users_eone/application_controller"

module UsersEone
  class HomeController < ApplicationController

    def index
    	@users = User.Order('id').page(params[:page]).per(30)
    end
  end
end

require_dependency "users_etwo/application_controller"

module UsersEtwo
  class HomeController < ApplicationController
  	caches_action :index, :cache_path  => :get_list_cache

    def index
    	@users = User.order(:id => :desc).page(params[:page]).per(30)
    end

    private
    def get_list_cache_url
    	page = params[:page]
    	if page.nil? || page.empty?
    		page = 1
    	end
    	[ 'users_engine2', User.order(:updated_at => 'desc').first.cache_key, page].join("_")
    end
  end
end

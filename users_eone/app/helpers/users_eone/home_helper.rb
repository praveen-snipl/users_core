module UsersEone
  module HomeHelper
  	def current_display_page
  		page = params[:page]
  		if page.nil? || page.empty?
  			page = 1
  		end 
  		page
  	end
  end
end

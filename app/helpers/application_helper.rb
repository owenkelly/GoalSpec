module ApplicationHelper

	def devise_links
		if user_signed_in?
			link_to "Sign Out", destroy_user_session_path, :method => :delete
		else
			link_to "Sign In", new_user_session_path
		end
	end
end

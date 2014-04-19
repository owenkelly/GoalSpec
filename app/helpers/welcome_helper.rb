module WelcomeHelper


def toggle_partial file
	render partial: file if @expand == "show"
end

def hide_link
	link_to "Hide", welcome_index_path(@expand = nil)
end

		

end

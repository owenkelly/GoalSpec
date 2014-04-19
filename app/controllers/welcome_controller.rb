class WelcomeController < ApplicationController
  def index
  	@expand = params[:expand]
  end
end 

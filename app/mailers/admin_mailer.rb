class AdminMailer < ActionMailer::Base
  default from: "admin@boiling-ridge-6865.herokuapp.com"

  	def welcome_new user
  		@url = new_user_session_path
  		@user = user
  		mail(to: @user.email, subject: "Welcome to GoalSpec!")
  	end

end

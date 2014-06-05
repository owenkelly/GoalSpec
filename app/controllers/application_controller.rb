class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :goal_due, :goal_name

  #before_filter :set_time_zone, if: :user_signed_in?


  def goal_due
  	@goal_due = Goal.first.end unless Goal.first == nil
  end

  def goal_name
  	@goal_name = Goal.first.goal unless Goal.first == nil
  end


  rescue_from CanCan::AccessDenied do |exception|
    redirect_to :back, :alert => exception.message
  end
  #private

    #def set_time_zone
      #Time.zone = current_user.time_zone
   # end

end

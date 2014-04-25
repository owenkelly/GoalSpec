class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :goal_due, :goal_name

  def goal_due
  	@goal_due = Goal.first.end unless Goal.first == nil
  end

  def goal_name
  	@goal_name = Goal.first.goal unless Goal.first == nil
  end

end

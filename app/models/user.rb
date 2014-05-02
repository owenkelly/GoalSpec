class User < ActiveRecord::Base
	has_many :goals
	scope :has_goals? -> { where(User.goals > 0)}
end

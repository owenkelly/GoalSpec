class User < ActiveRecord::Base
	has_many :goals

	validates :username, presence: true
	validates :password, length: {in: 8..20}, confirmation: true
	validates :password_confirmation, presence: true

end

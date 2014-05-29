class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :goals
	after_create :notify_user

	#attr_accessor :email, :password, :password_confirmation, :encrypted_password, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip,
					#:sign_in_count

	private
	def notify_user
		AdminMailer.welcome_new(self).deliver
	end



end

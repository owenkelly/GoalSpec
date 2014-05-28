class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :goals

	validates :email, presence: true
	validates :password, length: {in: 8..20}, confirmation: true
	validates :password_confirmation, presence: true

end

class Mom < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :applications

	has_many :jobs, :through => :applications


  	def full_name
    	return first_name.to_s + " " + last_name.to_s
  	end
	
end

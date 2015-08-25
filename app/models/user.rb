class User < ActiveRecord::Base
	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   has_one :student_profile
   has_one :business_profile

  # User::Roles
  # The available roles
  Roles = [ :admin , :student, :business ]

  def is?( requested_role )
    self.role == requested_role.to_s
  end

end

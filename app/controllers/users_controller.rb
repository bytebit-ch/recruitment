class UsersController < ApplicationController
	load_and_authorize_resource

	def show
  		if current_user.type_of_user == 'business'
  			if current_user.business_profile 
  				redirect_to business_profile_url current_user.business_profile
  			else
  				redirect_to new_business_profile_url  				
  			end
  		elsif current_user.type_of_user == 'student'
  			if current_user.student_profile 
  				redirect_to student_profile_url current_user.student_profile
	  		else
	  			redirect_to new_student_profile_url  				
	  		end

  		end
	end
end

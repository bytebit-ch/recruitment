class UsersController < ApplicationController
	load_and_authorize_resource

	def show
  		if current_user.type_of_user == 'business'
  			redirect_to business_profiles_url current_user.business_profile
  		elsif current_user.type_of_user == 'student'
  			redirect_to student_profile_url current_user.student_profile
  		end
	end
end

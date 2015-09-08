class AdminController < ApplicationController
	load_and_authorize_resource

	def index
		@business_profiles = BusinessProfile.all
	end

end

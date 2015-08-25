class Users::RegistrationsController < Devise::RegistrationsController
	def build_resource(hash=nil)
		super(hash)
		self.resource.type_of_user = 'business'
	end
end
class Users::InvitationsController < Devise::InvitationsController
  def accept_resource
     self.resource = super
     self.resource.type_of_user = 'student'
     return self.resource
  end
end
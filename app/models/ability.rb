class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
      user ||= User.new # guest user (not logged in)
       if user.type_of_user == 'admin'
        can :manage, :all
        can :read, User
        can :read, :all
        


       elsif user.type_of_user == 'business'
           can [:read, :index], StudentProfile
           can [:view_profile, :update, :create, :show], BusinessProfile, user: { id: user.id }
           can [:create], BusinessListing
           can [:view_profile, :update, :show, :destroy], BusinessListing, business_profile: { user: { id: user.id } }

           # can [:read, :update, :create], BusinessProfile # needs to be restricted to own profile
           # can [:read, :update, :create], BusinessListing# needs to be restricted to own profile
            can [:read, :edit, :destroy], User, id: user.id



       elsif user.type_of_user == 'student'
           can [:read, :index], [BusinessProfile, BusinessListing]
           can [:create], StudentProfile
           can [:view_profile, :update, :show], StudentProfile, user: { id: user.id }
           can [:read, :edit, :destroy], User, id: user.id


      end



    # #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end

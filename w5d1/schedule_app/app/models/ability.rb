class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role? :instructor
        can :manage, :all
#means a non-logged user or a user without a role
    elsif user.role? :student
      can :read, :User
      can :read, :location
      can :update, :User
      else 
        can :read, :all
    end

    # cancan aliases

    # :manage => all methods in the controller 
    # :read => [:index, :show]
    # :create => [:new, :create]
    # :update => [:edit, :update]

  end
end

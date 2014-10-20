class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role? :admin
        can :manage, :all
#means a non-logged user or a user without a role
    elsif user.role? :writer
      can :create, Post
      can :update, Post do |post|
        post.user_id == user.id
      end
    elsif user.role? :moderator
      can :destroy, Comment
    else
        can :read, Post
    end

    # cancan aliases

    # :manage => all methods in the controller 
    # :read => [:index, :show]
    # :create => [:new, :create]
    # :update => [:edit, :update]

  end
end

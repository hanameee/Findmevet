class Ability
  include CanCan::Ability

  def initialize(user)

      user ||= User.new # guest user (not logged in)
        if user.has_role? :admin
          #d어드민 권한
      can :manage, :all
        else
          #소시민 권한
      can :read, :all
      can :new, :all
      can :create, :all
      can :update, Review, user_id: user.id
      can :delete, Review, user_id: user.id
        end
  
  end
end

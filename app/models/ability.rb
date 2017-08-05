class Abilityinclude CanCan::Ability
  
  def initialize(user) 
    user ||= User.new 
    can :manage, :all if user.role == "관리자" 
    
    if user.role =="수의사"
    can :read, :all
    can :new, :all
    can :create, :all
    can :manage, Vet, user_id: user.id
    
    
    if user.role =="일반고객"
     can :read, :all
      can :new, :all
      can :create, :all
      can :update, Review, user_id: user.id
      can :delete, Review, user_id: user.id
    end
  end 
end
class Ability
  include CanCan::Ability

  def initialize(user)
     user ||= User.new
     can :read, :all
     can :create, Idea
     can :update, Idea do |idea|
       idea.users == user
     end
     can :destroy, Idea do |idea|
       idea.users == user
     end
  end
end

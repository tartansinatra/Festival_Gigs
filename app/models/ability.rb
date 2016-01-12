class Ability

  def initialize(user)
    user ||= User.new
    if user.role? :admin
      can :manage, :all
    else
      can :read, [Gig, Artist, Venue]
      can :book, Gig
    end

end
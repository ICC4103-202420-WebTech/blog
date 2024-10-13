# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Post
    # can [:index, :show], Post

    # can [:edit, :update, :destroy], Post, user: user
    can :manage, Post, user: user
  end
end

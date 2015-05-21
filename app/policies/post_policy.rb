class PostPolicy < ApplicationPolicy
  class Scope < Scope

    def resolve
      if !user.blank? && (user.admin? || user.moderator?)
        scope.all
      else
        scope.where(user: user)
      end
    end
  end
  def index?
    true
  end
end
class PostPolicy < ApplicationPolicy
  # class Scope < Scope

  #   def resolve
  #     if !user.blank? && (user.admin? || user.moderator?) # Why not if user.admin? || user.moderator?
  #       scope.all
  #     else
  #       scope.where(user: user) # user: user ?
  #     end
  #   end
  # end
  def index?
    true
  end
end
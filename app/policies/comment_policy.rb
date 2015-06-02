<<<<<<< HEAD
class CommentPolicy < ApplicationPolicy
  def new
    user.present?
  end

  def create?
    user.present?
  end
end
=======
 class CommentPolicy < ApplicationPolicy
 
   def create?
     user.present?
   end
 
   def update?
     create?
   end
 end
>>>>>>> checkpoint_36_comments

 class TopicPolicy < ApplicationPolicy
 
   def index?
     true
   end

   def show?
    record.public? || user.present? #public? is an standard rails method?
   end
 
   def create?
     user.present? && user.admin?
   end
 
   def update?
     create?
   end
 end
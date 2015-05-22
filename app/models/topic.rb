class Topic < ActiveRecord::Base
  has_many :posts

  topics = Topic.all
end

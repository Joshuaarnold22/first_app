# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  belongs_to :topic

  posts = Post.all

  default_scope { order('created_at DESC') }
  scope :ordered_by_title, -> { posts.order(:title) }
  scope :ordered_by_reverse_created_at, -> { posts.order('created_at DESC').reverse }
end

# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  
#  created_at :datetime         not nullpost_id    :integer
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base
  belongs_to :post
end

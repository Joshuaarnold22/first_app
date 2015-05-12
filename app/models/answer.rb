# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  body        :text
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
eRecord::Base
  belongs_to :question

  def recent?
    
    return created_at > Ti
class Answer < Activme.now.(3).days.ago
  end

end

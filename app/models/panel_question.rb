# == Schema Information
#
# Table name: panel_questions
#
#  id          :integer          not null, primary key
#  panel_id    :integer
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PanelQuestion < ApplicationRecord
  belongs_to :panel
  belongs_to :question

  
end

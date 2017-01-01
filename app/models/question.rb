# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  question   :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  status     :integer          default(0)
#  panel_id   :integer
#

class Question < ApplicationRecord
  belongs_to :user
  belongs_to :panel

  def timestamp
    created_at.strftime('%H:%M:%S %d %B %Y')
  end
end

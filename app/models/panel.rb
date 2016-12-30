# == Schema Information
#
# Table name: panels
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  rules       :text
#  moderator   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Panel < ApplicationRecord
  has_many :panel_questions
end

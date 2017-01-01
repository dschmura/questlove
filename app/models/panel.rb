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
  validates :name, :description, :moderator,  presence: true
  belongs_to :user 
  has_many :questions
  def moderator_name(moderator_id)
    User.find_by(id: moderator_id).user_name
  end
end

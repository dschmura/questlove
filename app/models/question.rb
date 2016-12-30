# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  question   :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  status     :integer          default("pending")
#

class Question < ApplicationRecord
  belongs_to :user
  enum status:  [:pending, :approved, :answered, :deferred]

  ## Question status 'scopes'
  def self.pending
    where(status: 'pending')
  end

  def self.approved
    where(status: 'approved')
  end
  def self.answered
    where(status: 'answered')
  end
  def self.deferred
    where(status: 'deferred')
  end

end

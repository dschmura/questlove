# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  question   :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  panel_id   :integer
#  status     :integer          default("pending")
#

class Question < ApplicationRecord
  belongs_to :user
  belongs_to :panel
  has_many :votes
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

  def timestamp
    created_at.strftime('%l:%M:%S %p')
  end
end

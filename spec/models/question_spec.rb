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

require 'rails_helper'

RSpec.describe Question, type: :model do
   xit "has a valid factory" do
    expect(build(:question)).to be_valid
  end
end

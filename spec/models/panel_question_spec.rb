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

require 'rails_helper'

RSpec.describe PanelQuestion, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

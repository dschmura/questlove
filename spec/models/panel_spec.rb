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

require 'rails_helper'

RSpec.describe Panel, type: :model do
  it "has a valid factory" do
    expect(build(:panel)).to be_valid
  end
  it "is invalid without a name" do
    panel = build(:panel, name: nil)
    panel.valid?
    expect(panel.errors[:name]).to include("can't be blank")
  end 
  it "is invalid without a description" do
    panel = build(:panel, description: nil)
    panel.valid?
    expect(panel.errors[:description]).to include("can't be blank")
  end 
  it "is invalid without a moderator" do
    panel = build(:panel, moderator: nil)
    panel.valid?
    expect(panel.errors[:moderator]).to include("can't be blank")
  end 

end

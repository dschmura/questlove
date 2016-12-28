require 'rails_helper'

RSpec.describe "panels/index", type: :view do
  before(:each) do
    assign(:panels, [
      Panel.create!(
        :name => "Name",
        :description => "MyText",
        :rules => "MyText",
        :moderator => 2
      ),
      Panel.create!(
        :name => "Name",
        :description => "MyText",
        :rules => "MyText",
        :moderator => 2
      )
    ])
  end

  xit "renders a list of panels" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end

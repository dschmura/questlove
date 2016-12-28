require 'rails_helper'

RSpec.describe "panels/new", type: :view do
  before(:each) do
    assign(:panel, Panel.new(
      :name => "Panel Title",
      :description => "Panel Description",
      :rules => "Panel Question Rules",
      :moderator => 1
    ))
  end

  xit "renders new panel form" do
    render

    assert_select "form[action=?][method=?]", panels_path, "post" do

      assert_select "input#panel_name[name=?]", "panel[name]"

      assert_select "textarea#panel_description[name=?]", "panel[description]"

      assert_select "textarea#panel_rules[name=?]", "panel[rules]"

      assert_select "input#panel_moderator[name=?]", "panel[moderator]"
    end
  end
end

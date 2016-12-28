require 'rails_helper'

RSpec.describe "panels/edit", type: :view do
  before(:each) do
    @panel = assign(:panel, Panel.create!(
      :name => "MyString",
      :description => "MyText",
      :rules => "MyText",
      :moderator => 1
    ))
  end

  xit "renders the edit panel form" do
    render

    assert_select "form[action=?][method=?]", panel_path(@panel), "post" do

      assert_select "input#panel_name[name=?]", "panel[name]"

      assert_select "textarea#panel_description[name=?]", "panel[description]"

      assert_select "textarea#panel_rules[name=?]", "panel[rules]"

      assert_select "input#panel_moderator[name=?]", "panel[moderator]"
    end
  end
end

require 'rails_helper'

RSpec.describe "panels/show", type: :view do
  before(:each) do
    @panel = assign(:panel, Panel.create!(
      :name => "Name",
      :description => "MyText",
      :rules => "MyText",
      :moderator => 2
    ))
  end

  xit "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end

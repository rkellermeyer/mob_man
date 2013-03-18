require 'spec_helper'

describe "arts/show" do
  before(:each) do
    @art = assign(:art, stub_model(Art,
      :title => "Title",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Description/)
  end
end
